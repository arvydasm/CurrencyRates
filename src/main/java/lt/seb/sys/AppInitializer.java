package lt.seb.sys;

import org.slf4j.LoggerFactory;
import org.springframework.web.WebApplicationInitializer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

/**
 * Created by arvydasm.
 */
public class AppInitializer implements WebApplicationInitializer {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(AppInitializer.class);

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

    }
}
