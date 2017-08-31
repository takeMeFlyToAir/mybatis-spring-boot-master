package tk.mybatis.springboot.conf;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;
import tk.mybatis.springboot.core.FreeMarkerViewExtend;

/**
 * Created by sjgtw-zzr on 2017/8/29.
 */
@Configuration
public class FreeMarkerConfig {
    @Bean
    public CommandLineRunner customFreemarker(FreeMarkerViewResolver resolver){
        return new CommandLineRunner() {
            @Override
            public void run(String... strings) throws Exception {
                resolver.setViewClass(FreeMarkerViewExtend.class);
            }
        };
    }
}
