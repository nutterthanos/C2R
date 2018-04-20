wget -N http://officecdn.microsoft.com/pr/EA4A4090-DE26-49D7-93C1-91BFF9E53FC3/Office/Data/v64.cab --directory-prefix=DogfoodDevMain
wget -N http://officecdn.microsoft.com/pr/F3260CF1-A92C-4C75-B02E-D64C0A86A968/Office/Data/v64.cab --directory-prefix=DogfoodCC
wget -N http://officecdn.microsoft.com/pr/834504CC-DC55-4C6D-9E71-E024D0253F6D/Office/Data/v64.cab --directory-prefix=DogfoodFRDC
wget -N http://officecdn.microsoft.com/pr/5462EEE5-1E97-495B-9370-853CD873BB07/Office/Data/v64.cab --directory-prefix=MicrosoftCC
wget -N http://officecdn.microsoft.com/pr/B61285DD-D9F7-41F2-9757-8F61CBA4E9C8/Office/Data/v64.cab --directory-prefix=MicrosoftDevMain
wget -N http://officecdn.microsoft.com/pr/F4F024C8-D611-4748-A7E0-02B6E754C0FE/Office/Data/v64.cab --directory-prefix=MicrosoftDC
wget -N http://officecdn.microsoft.com/pr/9A3B7FF2-58ED-40FD-ADD5-1E5158059D1C/Office/Data/v64.cab --directory-prefix=MicrosoftFRDC
wget -N http://officecdn.microsoft.com/pr/5440FD1F-7ECB-4221-8110-145EFAA6372F/Office/Data/v64.cab --directory-prefix=InsidersDevMain
wget -N http://officecdn.microsoft.com/pr/64256AFE-F5D9-4F86-8936-8840A6A4F5BE/Office/Data/v64.cab --directory-prefix=InsidersCC
wget -N http://officecdn.microsoft.com/pr/B8F9B850-328D-4355-9145-C59439A0C4CF/Office/Data/v64.cab --directory-prefix=InsidersFRDC
wget -N http://officecdn.microsoft.com/pr/f2e724c1-748f-4b47-8fb8-8e0d210e9208/Office/Data/v64.cab --directory-prefix=ProductionLTSC
wget -N http://officecdn.microsoft.com/pr/492350F6-3A01-4F97-B9C0-C7C6DDF67D60/Office/Data/v64.cab --directory-prefix=ProductionCC
wget -N http://officecdn.microsoft.com/pr/7FFBC6BF-BC32-4F92-8982-F9DD17FD3114/Office/Data/v64.cab --directory-prefix=ProductionDC

cd /root/githubrepo/C2R/DogfoodCC && cabextract v64.cab
cd /root/githubrepo/C2R/DogfoodDevMain && cabextract v64.cab
cd /root/githubrepo/C2R/DogfoodFRDC && cabextract v64.cab
cd /root/githubrepo/C2R/InsidersCC && cabextract v64.cab
cd /root/githubrepo/C2R/InsidersDevMain && cabextract v64.cab
cd /root/githubrepo/C2R/InsidersFRDC && cabextract v64.cab
cd /root/githubrepo/C2R/MicrosoftCC && cabextract v64.cab
cd /root/githubrepo/C2R/MicrosoftDC && cabextract v64.cab
cd /root/githubrepo/C2R/MicrosoftDevMain && cabextract v64.cab
cd /root/githubrepo/C2R/MicrosoftFRDC && cabextract v64.cab
cd /root/githubrepo/C2R/ProductionCC && cabextract v64.cab
cd /root/githubrepo/C2R/ProductionDC && cabextract v64.cab
cd /root/githubrepo/C2R/ProductionLTSC && cabextract v64.cab

echo '# C2R' >/root/githubrepo/C2R/README.MD
echo ' ' >>/root/githubrepo/C2R/README.MD
echo 'DogfoodCC F3260CF1-A92C-4C75-B02E-D64C0A86A968' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/DogfoodCC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'DogfoodDevMain EA4A4090-DE26-49D7-93C1-91BFF9E53FC3' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/DogfoodDevMain && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'DogfoodFRDC 834504CC-DC55-4C6D-9E71-E024D0253F6D' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/DogfoodFRDC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'InsidersCC Monthly Channel Targeted (Office Insider Slow Ring, C2R) 64256AFE-F5D9-4F86-8936-8840A6A4F5BE' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/InsidersCC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'InsidersDevMain Insider Channel (Office Insider Fast Ring, C2R) 5440FD1F-7ECB-4221-8110-145EFAA6372F' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/InsidersDevMain && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'InsidersFRDC Semi-Annual Channel Targeted (Business Insider, C2R) B8F9B850-328D-4355-9145-C59439A0C4CF' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/InsidersFRDC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'MicrosoftCC 5462EEE5-1E97-495B-9370-853CD873BB07' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/MicrosoftCC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'MicrosoftDC F4F024C8-D611-4748-A7E0-02B6E754C0FE' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/MicrosoftDC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'MicrosoftDevMain B61285DD-D9F7-41F2-9757-8F61CBA4E9C8' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/MicrosoftDevMain && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'MicrosoftFRDC 9A3B7FF2-58ED-40FD-ADD5-1E5158059D1C' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/MicrosoftFRDC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'ProductionCC Monthly Channel (Retail/RTM, C2R) 492350F6-3A01-4F97-B9C0-C7C6DDF67D60' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/ProductionCC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'ProductionDC Semi-Annual Channel (Business, C2R) 7FFBC6BF-BC32-4F92-8982-F9DD17FD3114' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/ProductionDC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD
echo 'ProductionLTSC F2E724C1-748F-4B47-8FB8-8E0D210E9208' >>/root/githubrepo/C2R/README.MD
cd /root/githubrepo/C2R/ProductionLTSC && awk 'NR==2{print}' v64.hash >>/root/githubrepo/C2R/README.MD

cd /root/githubrepo/C2R
git add .
git commit -m "`date`"
git push origin master
