package kr.ac.kopo.portfolio;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PdfController {

	@RequestMapping("/portfolio/pdf")
	public String pdfConverter() {
		
		return "portfolio/pdfConverter";
	}
}
