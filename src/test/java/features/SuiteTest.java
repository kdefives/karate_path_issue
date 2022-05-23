package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import cucumber.api.CucumberOptions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

@CucumberOptions( tags = {"~@ignore"})
class SuiteTest {

  @Test
  void testParallel() {
    Results results = Runner.path("classpath:features/").outputCucumberJson(true).tags("~@ignore").parallel(1);
    System.out.println("report files:" + results.getReportDir());
    assertEquals(results.getFailCount(), 0, results.getErrorMessages());
  }
}
