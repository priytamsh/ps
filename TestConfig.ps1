3.	configuration TestConfig
4.	{
5.	    Node IsWebServer
6.	    {
7.	        WindowsFeature IIS
8.	        {
9.	            Ensure               = 'Present'
10.	            Name                 = 'Web-Server'
11.	            IncludeAllSubFeature = $true
12.	        }
13.	    }
14.	
15.	    Node NotWebServer
16.	    {
17.	        WindowsFeature IIS
18.	        {
19.	            Ensure               = 'Absent'
20.	            Name                 = 'Web-Server'
21.	        }
22.	    }
23.	}
