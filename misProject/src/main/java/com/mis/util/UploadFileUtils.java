package com.mis.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

	private static final Logger logger = 
		      LoggerFactory.getLogger(UploadFileUtils.class);

		 

		//  public static String uploadFile(String uploadPath, 
//		      String originalName, 
//		      byte[] fileData)throws Exception{
		//    
//		    return null;
		//  }
		//  

		 

		  
		  public static String uploadFile(String uploadPath, 
		                              String originalName, 
		                              byte[] fileData)throws Exception{
		   //UUID瑜� �씠�슜�븳 怨좎쑀�븳 媛� �깮�꽦
		    UUID uid = UUID.randomUUID();
		    
		    //UUID瑜� �씠�슜�븳 怨좎쑀�븳 媛�_�뙆�씪紐�
		    String savedName = uid.toString() +"_"+originalName;
		    
		    //���옣�맆 寃쎈줈瑜� 怨꾩궛(�뿰, �썡, �씪)
		    String savedPath = calcPath(uploadPath);
		    
		    File target = new File(uploadPath +savedPath,savedName);
		    
		    //�썝蹂명뙆�씪�쓣 ���옣�븯�뒗 遺�遺�
		    FileCopyUtils.copy(fileData, target);
		    
		    //formatName: �썝蹂명뙆�씪�쓽 �솗�옣�옄瑜� �쓽誘명븳�떎. 
		    //--> �솗�옣�옄瑜� �씠�슜�빐 �씠誘몄� �뙆�씪�씤 寃쎌슦�� �븘�땶 寃쎌슦瑜� �굹�늻�뼱 泥섎━
		    String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		    
		    String uploadedFileName = null;
		   
		    //�씠誘몄� ���엯�쓽 �뙆�씪�씤 寃쎌슦�뿉�뒗 �뜽�꽕�씪�쓣 �깮�꽦�븯怨� 洹몃젃吏� �븡�� 寃쎌슦�뿉�뒗 makeIcon()�쓣 �넻�빐�꽌
		    //寃곌낵瑜� 留뚮뱾�뼱 �궡�뒗�뜲 makeIcon�� 寃쎈줈 泥섎━瑜� �븯�뒗 臾몄옄�뿴�쓽 移섑솚�슜�룄�씠�떎.
		    if(MediaUtils.getMediaType(formatName) != null){
		      uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
		    }else{
		      uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
		    }
		    System.out.println("uploadedFileName============>" + uploadedFileName);
		    return uploadedFileName;
		    
		  }
		  
		  private static  String makeIcon(String uploadPath, 
		      String path, 
		      String fileName)throws Exception{

		 

		    String iconName = 
		        uploadPath + path + File.separator+ fileName;
		    
		    return iconName.substring(
		        uploadPath.length()).replace(File.separatorChar, '/');
		  }
		  private static  String makeThumbnail(
		              String uploadPath, 
		              String path, 
		              String fileName)throws Exception{
		     BufferedImage sourceImg =   ImageIO.read(new File(uploadPath + path, fileName));
		   
		    /*BufferedImage destImg = 
		          Scalr.resize(sourceImg, Scalr.Method.QUALITY, Scalr.Mode.FIT_EXACT, 290, 200  );
		    */
		    String thumbnailName = 
		        uploadPath + 
		        path + File.separator +""+ fileName;
		    
		    File newFile = new File(thumbnailName);
		    String formatName =  fileName.substring(fileName.lastIndexOf(".")+1);
		    
		    ImageIO.write(sourceImg, formatName.toUpperCase(), newFile);
		    return thumbnailName.substring(
		        uploadPath.length()).replace(File.separatorChar, '/');
		  } 
		  
		  private static String calcPath(String uploadPath){
		    
		    Calendar cal = Calendar.getInstance();
		    
		    String yearPath = File.separator+cal.get(Calendar.YEAR);
		    
		    String monthPath = yearPath + 
		        File.separator + 
		        new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);

		 

		    String datePath = monthPath + 
		        File.separator + 
		        new DecimalFormat("00").format(cal.get(Calendar.DATE));
		    
		    makeDir(uploadPath, yearPath,monthPath,datePath);
		    
		    logger.info(datePath);
		    
		    return datePath;
		  }
		  
		  
		  private static void makeDir(String uploadPath, String... paths){
		    
		    if(new File(paths[paths.length-1]).exists()){
		      return;
		    }
		    
		    for (String path : paths) {
		      
		      File dirPath = new File(uploadPath + path);
		      
		      if(! dirPath.exists() ){
		        dirPath.mkdir();
		      } 
		    }
		  }
}