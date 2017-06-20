package controller;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import utils.UploadResponseJson;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

/**
 * Created by dengry on 2017/5/12.
 */
@Controller
public class UploadController {

    @ResponseBody
    @RequestMapping(value = "/upload")
    public UploadResponseJson upload(MultipartFile f, HttpSession session) {
        UploadResponseJson uploadResponseJson = new UploadResponseJson();
        String name = f.getName();

        String originalFilename = f.getOriginalFilename();
        String extension = FilenameUtils.getExtension(originalFilename);
        long size = f.getSize();
        String path = session.getServletContext().getRealPath("/upload");
        File parentfile = new File(path);//目录
        if (!parentfile.exists()) {
            parentfile.mkdirs();
        }
        File file = new File(parentfile, originalFilename);

        try {
            f.transferTo(file);
            uploadResponseJson.setState("success");
            uploadResponseJson.setName(name);
            uploadResponseJson.setOriginal(originalFilename);
            uploadResponseJson.setSize(size);
            uploadResponseJson.setUrl("");
            uploadResponseJson.setType(extension);
        } catch (IOException e) {
            e.printStackTrace();
            uploadResponseJson.setState("error");
        }
        return uploadResponseJson;
    }
}
