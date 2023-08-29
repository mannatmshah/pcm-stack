<?php
require('../fpdf.php');

class PDF extends FPDF
{
	protected $col = 0; // Current column
	protected $y0;      // Ordinate of column start

	function Header()
	{
		// Page header
		global $title;
	
		$this->SetFont('Arial','B',15);
		$w = $this->GetStringWidth($title)+6;
		$this->SetX((210-$w)/2);
		$this->SetDrawColor(0,80,180);
		$this->SetFillColor(230,230,0);
		$this->SetTextColor(220,50,50);
		$this->SetLineWidth(1);
		$this->Cell($w,9,$title,1,1,'C',true);
		$this->Ln(10);
		// Save ordinate
		$this->y0 = $this->GetY();
	}
	

	function Footer()
	{
		// Page footer
		$this->SetY(-15);
		$this->SetFont('Arial','I',8);
		$this->SetTextColor(128);
		$this->Cell(0,10,'Page '.$this->PageNo(),0,0,'C');
	}

// Load data
function LoadData($file)
{
	// Read file lines
	$lines = file($file);
	$data = array();
	foreach($lines as $line)
		$data[] = explode(';',trim($line));
	return $data;
}

// Simple table
function BasicTable($header, $data)
{
	// Header
	foreach($header as $col)
		$this->Cell(40,7,$col,1);
	$this->Ln();
	// Data
	foreach($data as $row)
	{
		foreach($row as $col)
			$this->Cell(40,6,$col,1);
		$this->Ln();
	}
}


// Simple table
function BasicTableHeaderOnEachPage($header, $data,$pageLenght)
{
	// Header
	//$this->
	$this->SetFillColor(200,100,100);
	$this->Cell(280,7,"Devendra Textiles",1,1,'C',true);
	$this->Ln();

	$this->SetFillColor(224,235,255);
	foreach($header as $col)
		$this->Cell(45,7,$col,1,0,'C',true);
	$this->Ln();
	// Data
	$rowNum=0;
	foreach($data as $row)
	{
		$rowNum++;
		if($rowNum>=$pageLenght){
			$rowNum=0;
			$this->AddPage();
			$this->SetFillColor(200,100,100);
			$this->Cell(180,7,"Devendra Textiles",1,1,'C',true);
			$this->Ln();

			$this->SetFillColor(224,235,255);
			foreach($header as $col)
				$this->Cell(45,7,$col,1,0,'C',true);
			$this->Ln();

		}
		foreach($row as $col)
			$this->Cell(40,6,$col,1);
		$this->Ln();
	}
}



// Better table
function ImprovedTable($header, $data)
{
	// Column widths
	$w = array(40, 35, 40, 45);
	// Header
	for($i=0;$i<count($header);$i++)
		$this->Cell($w[$i],7,$header[$i],1,0,'C');
	$this->Ln();
	// Data
	foreach($data as $row)
	{
		$this->Cell($w[0],6,$row[0],'LR');
		$this->Cell($w[1],6,$row[1],'LR');
		$this->Cell($w[2],6,number_format($row[2]),'LR',0,'R');
		$this->Cell($w[3],6,number_format($row[3]),'LR',0,'R');
		$this->Ln();
	}
	// Closing line
	$this->Cell(array_sum($w),0,'','T');
}

// Colored table
function FancyTable($header, $data)
{
	// Colors, line width and bold font
	$this->SetFillColor(255,0,0);
	$this->SetTextColor(255);
	$this->SetDrawColor(128,0,0);
	$this->SetLineWidth(.3);
	$this->SetFont('','B');
	// Header
	$w = array(40, 35, 40, 45);
	for($i=0;$i<count($header);$i++)
		$this->Cell($w[$i],7,$header[$i],1,0,'C',true);
	$this->Ln();
	// Color and font restoration
	$this->SetFillColor(224,235,255);
	$this->SetTextColor(0);
	$this->SetFont('');
	// Data
	$fill = false;
	$txtCol=255;

	foreach($data as $row)
	{
		$this->SetTextColor($txtCol,0,255);
		$this->Cell($w[0],6,$row[0],'LR',0,'L',$fill);
		$this->Cell($w[1],6,$row[1],'LR',0,'L',$fill);
		$this->Cell($w[2],6,number_format($row[2]),'LR',0,'R',$fill);
		$this->Cell($w[3],6,number_format($row[3]),'LR',0,'R',$fill);
		$this->Ln();
		$fill = !$fill;
		if($txtCol==255){
			$txtCol=0;
		}else{
			$txtCol=255;
		}
		
	}
	// Closing line
	$this->Cell(array_sum($w),0,'','T');
}
}

$pdf = new PDF('L');
// Column headings
$header = array('Country', 'Capital', 'Area (sq km)', 'Pop. (thousands)');
// Data loading
// $data = $pdf->LoadData('countries.txt');
$pdf->SetFont('Arial','',14);

/*
$pdf->AddPage();
$pdf->BasicTable($header,$data);
$pdf->AddPage();
$pdf->ImprovedTable($header,$data);
$pdf->AddPage();
$pdf->FancyTable($header,$data);
*/

$title = 'Pritesh Shah';
$pdf->SetTitle($title);
$pdf->AddPage();
$pdf->BasicTableHeaderOnEachPage($header,$data,25);


$pdf->Output();

//BasicTableHeaderOnEachPage


?>
