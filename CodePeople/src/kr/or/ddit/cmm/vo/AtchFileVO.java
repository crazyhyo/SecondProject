package kr.or.ddit.cmm.vo;

public class AtchFileVO {
	private Integer atchFileId = -1;	// 첨부파일 ID
	private Integer fileSn = 1;			// 파일순번
	private String fileStrePath;	// 파일저장 경로
	private String streFileNm;		// 저장파일명
	private String orignlFileNm;	// 실제파일명
	private String fileExtsn;		// 파일 확장자
	private String fileCn;			// 파일 내용
	private Integer fileSize = 0;		// 파일 크기
	private Integer fileUsage = 0;		// 파일 크기
	public Integer getAtchFileId() {
		return atchFileId;
	}
	public void setAtchFileId(Integer atchFileId) {
		this.atchFileId = atchFileId;
	}
	public Integer getFileSn() {
		return fileSn;
	}
	public void setFileSn(Integer fileSn) {
		this.fileSn = fileSn;
	}
	public String getFileStrePath() {
		return fileStrePath;
	}
	public void setFileStrePath(String fileStrePath) {
		this.fileStrePath = fileStrePath;
	}
	public String getStreFileNm() {
		return streFileNm;
	}
	public void setStreFileNm(String streFileNm) {
		this.streFileNm = streFileNm;
	}
	public String getOrignlFileNm() {
		return orignlFileNm;
	}
	public void setOrignlFileNm(String orignlFileNm) {
		this.orignlFileNm = orignlFileNm;
	}
	public String getFileExtsn() {
		return fileExtsn;
	}
	public void setFileExtsn(String fileExtsn) {
		this.fileExtsn = fileExtsn;
	}
	public String getFileCn() {
		return fileCn;
	}
	public void setFileCn(String fileCn) {
		this.fileCn = fileCn;
	}
	public Integer getFileSize() {
		return fileSize;
	}
	public void setFileSize(Integer fileSize) {
		this.fileSize = fileSize;
	}
	public Integer getFileUsage() {
		return fileUsage;
	}
	public void setFileUsage(Integer fileUsage) {
		this.fileUsage = fileUsage;
	}

	
}
