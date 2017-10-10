from hackerrank.HackerRankAPI import HackerRankAPI

API_KEY = 'hackerrank|1897180-1990|756010992dddc119efe6211792561e863ee8b554'  #your API-KEY here

compiler = HackerRankAPI(api_key = API_KEY)

print compiler.supportedlanguages()     #prints a list of supported languages


source = '''console.log("5+2")'''   #give your source code here

'''
Alternatively,you can copy existing files to source this way:
with open(file_name,'r') as f:
     source = f.read()
'''     

result = compiler.run({'source': source,
                       'lang':'javascript'     
                       })
                       
                       
print(result.output,result.time,result.memory,result.message) 