# About this project
Contains some greek content as it was an assignment for my University of Piraeus, I had to make an XML file (car_rental.xml), in which you will be able to store information about the following cars available for rent to companies or individuals from a long-term car leasing business and which you will find in the following file: dedomena_ergasias_examinoy_2024_xml.xls

# 1
There is an XML file **car_rental.xml** that contains data about cars available for long-term leasing by a company. In addition, a DTD **car_rental.dtd** that defines the rules that the XML file must conform to in order to ensure the correct structure and validity of the data.

# 2
The new **car_rental_new_with_dtd.xml** and **car_rental_new.dtd** files convert the XML file and the corresponding DTD so that the 'mini_model_description' element is an optional property and the 'Color' element is a required property into a new empty element named 'extra_car_info', which it will be in every car.

# 3
Conversion of the DTD file (car_rental_new.dtd) to the corresponding XML Schema **car_rental_new.xsd** and **car_rental_with_xsd.xml**

# 4
Suppose we want to include in our data description (car_rental_new.xml file) for each available car for rent the following information: 
- Level/Index of environmental pollution from the operation and movement of the specific car model (optional information). 
  *  It will contain a value from 1 to 5, where 1 will indicate a low level of environmental pollution and 5 a high level of environmental pollution.
- Report on whether it is a car that is rented either exclusively to companies or exclusively to individuals or is available to be rented by both categories - companies and individuals - (mandatory information).
- Votes for each car by registered users/customers (mandatory information, even if it is empty information). 
  *  The vote must include the name of the user (username) who votes and the number of stars he puts on each available car and optionally a comment.
  *  The vote must contain the number of stars and optionally the comment. 
The new files is named **car_rental_new2.xml** and **car_rental_new2.dtd**

# 5
Creation of a CSS file to display the data of the XML document (car_rental_new.xml) as **car_rental_styles.css** .
We insert the command ?xml-stylesheet type="text/css" href="car_rental_styles.css"? , like so :

![image](https://github.com/user-attachments/assets/c296ff96-2532-4182-a376-3f94abb17d1e)


# 6
Creation of different XSL files to display the data of the XML document (car_rental_new.xml) in the following ways:
1. Return a list that will display in a table the information concerning each car for rent (car): the make of the car (manufacturing company, e.g. Renault), the model of the car (model, e.g. CLIO V ), the color of the car and the mini_model_description of the car (**present1.xsl**). We insert the command ?xml-stylesheet type="text/css" href="present1.xsl"? , like so :
 ![image](https://github.com/user-attachments/assets/41b3eac0-23ef-4ebb-b872-423a0b28ce0d)

We insert the command ![image](https://github.com/user-attachments/assets/c29d5525-260b-4835-b03b-48484356226f)

And put on browser : http://localhost:8000/car_rental_new_with_dtd.xml

And it looks like: ![image](https://github.com/user-attachments/assets/3de671a0-501f-4617-89bc-079a0ba8f0d1)


2. Sort leasing cars alphabetically by car make (manufacturing company, e.g. Renault), using recursive iteration (apply-templates). Sort will be in ascending order (**present2.xsl**)
We put the command likewise : ?xml-stylesheet type="text/xsl" href="present2.xsl"?

And it looks like: ![image](https://github.com/user-attachments/assets/58b60284-e53c-42de-8285-e7d8cc85b9c1)

3. Sort the cars in descending order based on the monthly lease without VAT (monthly_leasing) of each car, using <xsl:for-each> iteration, but also a condition format. The make of the car (manufacturing company, e.g. Renault), the model of the car (model, e.g.
CLIO V) and the monthly rent without VAT of the respective car, sorted in descending order (**present3.xsl**).
We put the command likewise : ?xml-stylesheet type="text/xsl" href="present3.xsl"?

And it looks like: ![image](https://github.com/user-attachments/assets/ef88aa82-2feb-479a-a87b-eeff498c67c2)


4. Return a list that will display within a <cars_to_rent> element the cars for rent, where each car will contain the model of the car (model, e.g. CLIO V) and the individual items of basic equipment present in each car for rent , while it will not contain the elements of the executive equipment at all,even if these exist in some car (**present4.xsl**).
We put the command likewise : ?xml-stylesheet type="text/xsl" href="present4.xsl"?

And it looks like: ![image](https://github.com/user-attachments/assets/2e6c878e-a19e-407a-9d9a-ea1ec89965e7)

5. Filtering the cars for rent based on the CO2 emissions (CO2_emissions) of each car and presenting only the cars with CO2 emissions above 110 gr/km (**present5.xsl**).
We put the command likewise : xml-stylesheet type="text/xsl" href="present5.xsl"?

And it looks like: ![image](https://github.com/user-attachments/assets/4a9fae2d-aeb2-4133-a7a8-3c466cb4dcc7)


# Project description
- Car Information: The car element includes the no property, which specifies the unique identifier for each car in the list. Each car consists of individual elements such as manufacturer_brand, main_characteristics, economic_info_leasing, equipment, and offer_include.
- Manufacturer Brand: The manufacturer_brand element includes the manufacturer's brand name and car details such as model, color, and mini_model_description.
- Main Characteristics: The main_characteristics element includes information about the engine (Engine), CO2 emissions (CO2_emissions),
and fuel consumption (Fuel_consumption). Each element includes additional properties such as the unit of measurement for CO2 emissions (em_unit) and the unit of measurement for fuel consumption (unit_fuel).
- Leasing Charges Information: The economic_info_leasing element contains details of leasing costs,
including monthly charges (monthly_leasing) with and without VAT, payments in advance (payment_in_advance), retail price (retail_price), and contract terms (detail_econ_info). Each charge includes the property leasing_unit for the currency and tax for the VAT rate.
- Car Equipment: The equipment element consists of the basic equipment (basic_equipment) and the optional executive equipment (executive_equip). Each piece of equipment includes a unique ID to identify it.
- What the Offer Includes: The offer_include element includes a list of services and benefits offered with the car rental, such as maintenance, insurance, road tax, car replacement, and tire change.
  
Items Described:
* manufacturer_brand: The manufacturer brand and related information of the car.
* main_characteristics: The main specifications of the car, including CO2 emissions and fuel consumption.
* economic_info_leasing: The financial information and leasing charges for the car.
* equipment: The car's equipment, both basic and executive equipment.
* offer_include: What is included in the leasing offer for the specific car.
   
