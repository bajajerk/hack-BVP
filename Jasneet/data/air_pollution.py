# -*- coding: utf-8 -*-
import scrapy


class AirPollutionSpider(scrapy.Spider):
    name = "air_pollution"
    allowed_domains = ["http://www.cpcb.gov.in/CAAQM/frmCurrentDataNew.aspx?StationName=Punjabi5Bagh"]
    start_urls = ['http://http://www.cpcb.gov.in/CAAQM/frmCurrentDataNew.aspx?StationName=Punjabi5Bagh/']

    def parse(self, response):
        table = response.css('table::text').extract()

        #Give the extracted content row wise
        for item in zip(table):
            #create a dictionary to store the scraped info
            scraped_info = {
                'table' : item[0],

            }
            #yield or give the scraped info to scrapy
            yield scraped_info
