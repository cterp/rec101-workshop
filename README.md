# Graph-based Recommenders 101

Instructor: Caroline Harbitz

### Software requirement
This workshop requires the following software:

+ Neo4j Community edition version 2.3.1

Head to Neo4j's website to download the latest version: http://neo4j.com/download/

#### How to get started

##### Mac or Windows
Use the Neo4j GUI that comes with the Mac or Windows installaion.

##### Mac or Linux
1. Go to the directory where you'd like to install Neo4j. Then 
```tar -xf neo4j-community-2.3.1-unix.tar.gz```
2. Then go into your Neo4j directory: ```cd neo4j-community-2.3.1/```
3. Start your Neo4j server: ```./bin/neo4j start```
4. In your browser, head to: <http://localhost:7474/>
5. When you're finished with your session, stop the server: ```./bin/neo4j stop```

### Download the workshop material

If you have git installed, you can clone this tutorial by running this command in your terminal:

```
$ git clone https://github.com/cterp/rec101-galvanize-workshop.git
```

### Note about the graph data

I wrote a web scraper using BeautifulSoup to parse hike information from the Washington Trails Association (WTA) website. Check them out to find your next hike: http://www.wta.org/
