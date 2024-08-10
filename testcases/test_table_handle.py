import time
from selenium import webdriver
from selenium.webdriver.common.by import By

URL = 'https://www.techlistic.com/2017/02/automate-demo-web-table-with-selenium.html#google_vignette'
driver = webdriver.Chrome()
driver.get(URL)
driver.maximize_window()
time.sleep(4)

# # get all data
 table_xpath = '//*[@id="customers"]/tbody'
 table_data = driver.find_element(By.XPATH, table_xpath).text
 print(table_data)
 print(type(table_data))

# # get cell data
 table_cell_xpath = '//*[@id="customers"]/tbody/tr[5]/td[2]'
 table_cell_data = driver.find_element(By.XPATH, table_cell_xpath).text
 print(table_cell_data)
 print(type(table_cell_data))

# # get header value
 table_header_xpath = '//*[@id="customers"]/tbody/tr[1]'
 table_header_data = driver.find_element(By.XPATH, table_header_xpath).text
 print(table_header_data)
 print(type(table_header_data))

# get data using rows and columns
n_rows_xpath = '//*[@id="customers"]/tbody/tr'
n_rows = len(driver.find_elements(By.XPATH, n_rows_xpath))
print(n_rows)

n_columns_xpath = '//*[@id="customers"]/tbody/tr[1]/th'
n_cols = len(driver.find_elements(By.XPATH, n_columns_xpath))
print(n_cols)
cell_xpath = ""
for r in range(1, n_rows + 1):
    for c in range(1, n_cols + 1):
        cell_xpath = f'//*[@id="customers"]/tbody/tr[{r}]/th[{c}]'
        if r > 1:
            cell_xpath = f'//*[@id="customers"]/tbody/tr[{r}]/td[{c}]'
        cell_data = driver.find_element(By.XPATH, cell_xpath).text
        print(cell_data, end=" ")
    print("")
time.sleep(4)
driver.close()
