import datetime
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.by import By

CHROMEDRIVER_PATH = '/usr/local/bin/chromedriver'
WINDOW_SIZE = "1920,1080"

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--window-size=%s" % WINDOW_SIZE)
chrome_options.add_argument('--no-sandbox')

driver = webdriver.Chrome(executable_path=CHROMEDRIVER_PATH,
                          chrome_options=chrome_options
                         )
try:
  content = driver.find_element(By.CLASS_NAME, 'error-content')
  if content:
    print(f'Unsuccessfully, Database connection error occurs. Please check your code again DEVs.')
    driver.close()
    driver.quit()
    raise Exception("Database connection error, please check your code again DEVs.")
except NoSuchElementException:
    print(f'Successfully, Database connection error not occur. Proceed to deploy the website to Production Server at 54.208.129.197.')
    pass
    print(f'--------------------------------------')
    print(f'Test Completed at: {datetime.datetime.now()}')
    driver.close()
    driver.quit()
