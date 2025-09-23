package egovframework.example.sample.web.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Calendar;

import org.springframework.stereotype.Controller;

@Controller
public class Log {
	static public String projectName = "mt5";

	static public String []DEBUGFILTERS= {
			"call", /* call 함수 흐름 로그 */
			"err" /* 에러 로그 */
			,"text"
			,"sendcheck"
	};
	static public void write(String arg, boolean allLog) {
		String filetimestamp = (Calendar.getInstance().getTime().getYear() + 1900) + "_"
				+ (Calendar.getInstance().getTime().getMonth() + 1) + "_" + Calendar.getInstance().getTime().getDate()
				+ "_" + Calendar.getInstance().getTime().getHours();
		try {
			String fname = "bldlog";
			if (allLog == false) fname = "bldlog_filter";
			File file = new File("./logs/");
			if (!file.exists()) {
				file.mkdirs();
			}
			
            // 한 달 전의 날짜 계산
            Calendar oneMonthAgo = Calendar.getInstance();
            oneMonthAgo.add(Calendar.MONTH, -1);

            // 로그 파일 삭제
            File[] logFiles = file.listFiles();
            for (File logFile : logFiles) {
                if (logFile.getName().contains("bldlog")) {
                    // 파일명에서 날짜 정보를 추출하여 비교
                    String[] parts = logFile.getName().replace("bldlog_filter", "").replace("bldlog", "").split("_");
                    int year = Integer.parseInt(parts[0]); // Year is at index 0
                    int month = Integer.parseInt(parts[1]) - 1; // Month is at index 1 (zero-based)
                    int date = Integer.parseInt(parts[2].replace(".txt", "")); // Date is at index 2

                    Calendar logFileDate = Calendar.getInstance();
                    logFileDate.set(year, month, date);

                    if (logFileDate.before(oneMonthAgo)) {
                        logFile.delete();
                    }
                }else{
                	// 그 외 로그 
                    String fileName = logFile.getName();
                    if (fileName.contains(".") && fileName.contains("-") && !fileName.contains("tomcat8")) {
                		String[] parts = logFile.getName().split("\\.")[1].split("-");
                		int year = Integer.parseInt(parts[0]); // Year is at index 0
                		int month = Integer.parseInt(parts[1]) - 1; // Month is at index 1 (zero-based)
                		int date = Integer.parseInt(parts[2]); // Date is at index 2
                		Calendar logFileDate = Calendar.getInstance();
                		logFileDate.set(year, month, date);
                		
                		if (logFileDate.before(oneMonthAgo)) {
                			logFile.delete();
                		}
                	}
                	
                }
            }
            
			BufferedWriter bw = new BufferedWriter(new FileWriter("./logs/" + fname + filetimestamp + ".txt", true));
			PrintWriter pw = new PrintWriter(bw, true);
			pw.println(arg);
			pw.flush();
			pw.close();
		} catch (Exception E) {
			System.out.println("로그 기록 에러, 폴더 없거나 권한 오류일듯 : " + E.getMessage());
		}
	}

	static public void print(String arg, String filter) {
		String time = Calendar.getInstance().getTime().toLocaleString();
		String out = time + ",[" + filter + "]," + arg;
		if (Arrays.asList(DEBUGFILTERS).contains(filter)) {
			System.out.println(out);
			Log.write(out, false);
		}
//		Log.write(out, true);
	}
}