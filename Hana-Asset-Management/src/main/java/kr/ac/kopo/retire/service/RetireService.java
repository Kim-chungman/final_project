package kr.ac.kopo.retire.service;

import org.json.simple.JSONObject;

import kr.ac.kopo.retire.vo.RetireVO;

public interface RetireService {

	public RetireVO pensionCalc(RetireVO retire);

	public JSONObject getChartData(RetireVO portfolio);

}
