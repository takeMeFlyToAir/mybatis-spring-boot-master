package tk.mybatis.springboot.core;

import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class FreeMarkerViewExtend extends FreeMarkerView {

	protected void exposeHelpers(Map<String, Object> model, HttpServletRequest request){
		model.put("base", request.getContextPath());//base目录。
	}
}
