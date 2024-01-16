#! /usr/bin/env bash

URL=officecdn.microsoft.com/sg
DIR=Office/Data

LANG='en-us'
LANGID='1033'

#wget -N -q https://mrodevicemgr.officeapps.live.com/mrodevicemgrsvc/api/v1/C2RReleaseData
wget -N -q https://mrodevicemgr.officeapps.live.com/mrodevicemgrsvc/api/v2/C2RReleaseData
wget -N -q https://clients.config.office.net/releases/v1.0/OfficeReleases
wget -N -q https://$URL/wsus/ofl.cab
wget -N -q https://$URL/wsus/releasehistory.cab
wget -N -q https://$URL/wsus/setup.exe
curl 'https://config.office.com/api/filelist?Channel=Current&Version=&Arch=x64&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >Current64
curl 'https://config.office.com/api/filelist?Channel=Current&Version=&Arch=x86&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >Current86
curl 'https://config.office.com/api/filelist?Channel=CurrentPreview&Version=&Arch=x64&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >CurrentPreview64
curl 'https://config.office.com/api/filelist?Channel=CurrentPreview&Version=&Arch=x86&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >CurrentPreview86
curl 'https://config.office.com/api/filelist?Channel=MonthlyEnterprise&Version=&Arch=x64&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >MonthlyEnterprise64
curl 'https://config.office.com/api/filelist?Channel=MonthlyEnterprise&Version=&Arch=x86&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >MonthlyEnterprise86
curl 'https://config.office.com/api/filelist?Channel=PerpetualVL2019&Version=&Arch=x64&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >PerpetualVL201964
curl 'https://config.office.com/api/filelist?Channel=PerpetualVL2019&Version=&Arch=x86&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >PerpetualVL201986
curl 'https://config.office.com/api/filelist?Channel=PerpetualVL2021&Version=&Arch=x64&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >PerpetualVL202164
curl 'https://config.office.com/api/filelist?Channel=PerpetualVL2021&Version=&Arch=x86&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >PerpetualVL202186
curl 'https://config.office.com/api/filelist?Channel=SemiAnnual&Version=&Arch=x64&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >SemiAnnual64
curl 'https://config.office.com/api/filelist?Channel=SemiAnnual&Version=&Arch=x86&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >SemiAnnual86
curl 'https://config.office.com/api/filelist?Channel=SemiAnnualPreview&Version=&Arch=x64&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >SemiAnnualPreview64
curl 'https://config.office.com/api/filelist?Channel=SemiAnnualPreview&Version=&Arch=x86&AllLanguages=True' | sed 's/"/\n/g' | sort | uniq >SemiAnnualPreview86
curl https://config.office.com/api/filelist | sed 's/"/\n/g' | sort | uniq >filelist
curl https://config.office.com/api/filelist/skus | sed 's/"/\n/g' | sort | uniq >skus
curl https://config.office.com/api/filelist/channels | sed 's/"/\n/g' | sort | uniq >channels

cabextract -q ofl.cab
cabextract -q releasehistory.cab

FFN01=6BB97ACC-EC9F-4EC2-8DC3-3A398BBC93DB
FFN02=89815E81-C82E-49A3-99DC-2B99229CF632
FFN03=BADBADBA-DBAD-BADB-ADBA-BADBADBADBAD
FFN04=D85263CB-A813-4A8F-9895-E2EC9CA47293
FFN05=CDAFF0F1-63B9-4630-BC32-90BF5B2F8308
FFN06=6115E8D2-FDDF-4F64-9F23-B73451A1A97E
FFN07=9981A3FE-BBC6-41C7-86F4-89DC69E477E2
FFN08=C67D6333-12A1-463E-8011-1493FF26FED2
FFN09=39168D7E-077B-48E7-872C-B232C3E72675
FFN10=0F72FECE-4E67-432D-B9A8-2393C8522FB7
FFN11=185CDAE3-CA39-40C1-BA12-DCDDDA72A0DC
FFN12=133DBEB4-3C56-4C67-9D80-F240C53D7D20
FFN13=7D632000-B182-4E05-A91D-763D282C24DE
FFN14=A1D255FE-49BB-4A88-ADE8-4EC08D98FBD4
FFN15=285A35E5-58C8-4579-A9FF-4E791E21691D
FFN16=E404F044-0870-4935-8B00-1F59A813F7D6
FFN17=2C508370-A266-4CFC-8877-AF06FDEB0C24
FFN18=CBC7891E-9126-44DE-8A56-2BD6D2E06C48
FFN19=55C44C35-878E-4C43-83EE-B666BF4261A4
FFN20=50CFADF4-6AD2-4BD2-9981-C7B5C05A8C67
FFN21=2E148DE9-61C8-4051-B103-4AF54BAFFBB4
FFN22=F2E724C1-748F-4B47-8FB8-8E0D210E9208
FFN23=1D2D2EA6-1680-4C56-AC58-A441C8C24FF9
FFN24=834504CC-DC55-4C6D-9E71-E024D0253F6D
FFN25=C4A7726F-06EA-48E2-A13A-9D78849EB706
FFN26=5030841D-C919-4594-8D2D-84AE4F96E58E
FFN27=86752282-5841-4120-AC80-DB03AE6B5FDB
FFN28=F4F024C8-D611-4748-A7E0-02B6E754C0FE
FFN29=7FFBC6BF-BC32-4F92-8982-F9DD17FD3114
FFN30=B8F9B850-328D-4355-9145-C59439A0C4CF
FFN31=9A3B7FF2-58ED-40FD-ADD5-1E5158059D1C
FFN32=55336B82-A18D-4DD6-B5F6-9E5095C314A6
FFN33=492350F6-3A01-4F97-B9C0-C7C6DDF67D60
FFN34=64256AFE-F5D9-4F86-8936-8840A6A4F5BE
FFN35=5462EEE5-1E97-495B-9370-853CD873BB07
FFN36=F3260CF1-A92C-4C75-B02E-D64C0A86A968
FFN37=5440FD1F-7ECB-4221-8110-145EFAA6372F
FFN38=B61285DD-D9F7-41F2-9757-8F61CBA4E9C8
FFN39=EA4A4090-DE26-49D7-93C1-91BFF9E53FC3

# Use the timestamp to set the modification time
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN01/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN02/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN03/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN04/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN05/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN06/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN07/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN08/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN09/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN10/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN11/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN12/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN13/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN14/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN15/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN16/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN17/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN18/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN19/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN20/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN21/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN22/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN23/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN24/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN25/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN26/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN27/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN28/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN29/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN30/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN31/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN32/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN33/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN34/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN35/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN36/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN37/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN38/$DIR/v64.cab
rm -rf /home/runner/work/C2R/C2R/$URL/$FFN39/$DIR/v64.cab

wget -N -q -x https://$URL/$FFN01/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN02/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN03/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN04/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN05/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN06/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN07/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN08/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN09/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN10/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN11/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN12/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN13/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN14/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN15/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN16/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN17/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN18/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN19/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN20/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN21/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN22/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN23/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN24/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN25/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN26/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN27/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN28/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN29/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN30/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN31/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN32/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN33/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN34/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN35/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN36/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN37/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN38/$DIR/v64.cab
wget -N -q -x https://$URL/$FFN39/$DIR/v64.cab

cd /home/runner/work/C2R/C2R/$URL/$FFN01/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN02/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN03/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN04/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN05/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN06/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN07/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN08/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN09/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN10/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN11/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN12/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN13/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN14/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN15/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN16/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN17/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN18/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN19/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN20/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN21/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN22/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN23/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN24/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN25/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN26/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN27/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN28/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN29/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN30/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN31/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN32/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN33/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN34/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN35/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN36/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN37/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN38/$DIR/ && cabextract -q v64.cab
cd /home/runner/work/C2R/C2R/$URL/$FFN39/$DIR/ && cabextract -q v64.cab

VER01=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN01/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER02=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN02/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER03=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN03/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER04=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN04/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER05=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN05/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER06=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN06/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER07=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN07/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER08=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN08/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER09=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN09/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER10=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN10/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER11=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN11/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER12=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN12/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER13=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN13/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER14=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN14/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER15=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN15/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER16=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN16/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER17=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN17/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER18=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN18/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER19=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN19/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER20=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN20/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER21=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN21/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER22=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN22/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER23=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN23/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER24=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN24/$DIR/VersionDescriptor.xml | awk -F "\"" '{print $2}'`
VER25=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN25/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER26=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN26/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER27=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN27/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER28=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN28/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER29=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN29/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER30=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN30/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER31=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN31/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER32=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN32/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER33=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN33/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER34=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN34/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER35=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN35/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER36=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN36/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER37=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN37/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER38=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN38/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`
VER39=`grep Available /home/runner/work/C2R/C2R/$URL/$FFN39/$DIR/VersionDescriptor.xml | grep Default | awk -F "\"" '{print $4}'`

TIME01=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN01/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME02=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN02/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME03=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN03/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME04=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN04/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME05=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN05/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME06=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN06/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME07=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN07/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME08=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN08/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME09=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN09/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME10=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN10/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME11=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN11/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME12=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN12/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME13=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN13/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME14=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN14/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME15=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN15/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME16=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN16/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME17=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN17/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME18=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN18/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME19=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN19/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME20=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN20/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME21=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN21/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME22=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN22/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME23=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN23/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME24=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN24/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME25=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN25/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME26=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN26/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME27=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN27/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME28=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN28/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME29=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN29/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME30=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN30/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME31=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN31/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME32=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN32/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME33=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN33/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME34=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN34/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME35=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN35/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME36=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN36/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME37=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN37/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME38=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN38/$DIR/v64.cab | awk -F '.' '{print $1}'`
TIME39=`stat --printf='%y' /home/runner/work/C2R/C2R/$URL/$FFN39/$DIR/v64.cab | awk -F '.' '{print $1}'`

cd /home/runner/work/C2R/C2R
echo "
# C2R

* [Office 2010 Administrative Template files (ADM, ADMX/ADML) and Office Customization Tool](https://www.microsoft.com/en-us/download/details.aspx?id=18968)
* [Office 2013 Administrative Template files (ADMX/ADML) and Office Customization Tool](https://www.microsoft.com/en-us/download/details.aspx?id=35554)
* [Administrative Template files (ADMX/ADML) for Microsoft 365 Apps for enterprise/Office LTSC 2021/Office 2019/Office 2016 and the Office Customization Tool for Office 2016](https://www.microsoft.com/en-us/download/details.aspx?id=49030)
* [Office 2013 Deployment Tool for Click-to-Run](https://www.microsoft.com/en-us/download/details.aspx?id=36778)
* [Office Deployment Tool](https://www.microsoft.com/en-us/download/details.aspx?id=49117)
* [Office Customization Tool for Click-To-Run](http://officedev.github.io/Office-IT-Pro-Deployment-Scripts/XmlEditor.html)
* [Release information for updates to Microsoft 365 Apps](https://docs.microsoft.com/en-us/officeupdates/release-notes-microsoft365-apps)
* [Update history for Microsoft 365 Apps](https://docs.microsoft.com/en-us/officeupdates/update-history-microsoft365-apps-by-date)
* [Update history for Office LTSC 2021 and Office 2021](https://docs.microsoft.com/en-us/officeupdates/update-history-office-2021)
* [Update history for Office 2016 C2R and Office 2019](https://docs.microsoft.com/en-us/officeupdates/update-history-office-2019)
* [Update history for Office 2013](https://docs.microsoft.com/en-us/officeupdates/update-history-office-2013)
* [Update history for Office 2010 Click-to-Run products](https://docs.microsoft.com/en-us/officeupdates/update-history-office-2010-click-to-run)
* [Update history for Office for Mac](https://docs.microsoft.com/en-us/officeupdates/update-history-office-for-mac)
* [Update history for Office Insider for Mac](https://support.office.com/en-us/article/update-history-for-office-insider-for-mac-83d11f86-ef3c-48df-889e-9fda3cc66f5c)
* [Changes to Slow/Fast level names for Office Insider for Windows desktop](https://support.office.com/en-us/article/changes-to-slow-fast-level-names-for-office-insider-for-windows-desktop-055ee4f9-9ce3-4fb8-8a9a-ca6745867d52)

| FFN  |Version|Time|ChannelNew|ChannelOld|ChannelRemarks|
|-------|-------|-------|-------|-------|-------|
|$FFN01|$VER01|$TIME01||||
|$FFN02|$VER02|$TIME02||||
|$FFN03|$VER03|$TIME03||||
|$FFN04|$VER04|$TIME04||||
|$FFN05|$VER05|$TIME05||||
|$FFN06|$VER06|$TIME06||||
|$FFN07|$VER07|$TIME07||||
|$FFN08|$VER08|$TIME08||||
|$FFN09|$VER09|$TIME09||||
|$FFN10|$VER10|$TIME10||||
|$FFN11|$VER11|$TIME11||||
|$FFN12|$VER12|$TIME12||||
|$FFN13|$VER13|$TIME13||||
|$FFN14|$VER14|$TIME14||||
|$FFN15|$VER15|$TIME15||||
|$FFN16|$VER16|$TIME16||||
|$FFN17|$VER17|$TIME17||||
|$FFN18|$VER18|$TIME18||||
|$FFN19|$VER19|$TIME19||||
|$FFN20|$VER20|$TIME20||||
|$FFN21|$VER21|$TIME21|||Insiders_LTSC|
|$FFN22|$VER22|$TIME22|PerpetualVL2019||Production_LTSC|
|$FFN23|$VER23|$TIME23|||Microsoft_LTSC|
|$FFN24|$VER24|$TIME24|||Dogfood_FRDC|
|$FFN25|$VER25|$TIME25|||Dogfood_DCEXT|
|$FFN26|$VER26|$TIME26|PerpetualVL2021||Production_LTSC2021|
|$FFN27|$VER27|$TIME27|||Microsoft_LTSC2021|
|$FFN28|$VER28|$TIME28|||Microsoft_DC|
|$FFN29|$VER29|$TIME29|SemiAnnual||Production_DC|
|$FFN30|$VER30|$TIME30|SemiAnnualPreview||Insiders_FRDC|
|$FFN31|$VER31|$TIME31|||Microsoft_FRDC|
|$FFN32|$VER32|$TIME32|MonthlyEnterprise||Production_MEC|
|$FFN33|$VER33|$TIME33|Current||Production_CC|
|$FFN34|$VER34|$TIME34|CurrentPreview||Insiders_CC|
|$FFN35|$VER35|$TIME35|||Microsoft_CC|
|$FFN36|$VER36|$TIME36|||Dogfood_CC|
|$FFN37|$VER37|$TIME37|||Insiders_DevMain|
|$FFN38|$VER38|$TIME38|||Microsoft_DevMain|
|$FFN39|$VER39|$TIME39|||Dogfood_DevMain|

x86 32-Bit and x64 64-Bit Download Example:
\`\`\`
https://$URL/$FFN33/Office/Data/$VER33/a320_exp.cab
https://$URL/$FFN33/Office/Data/$VER33/a320_exp.cab.cat
https://$URL/$FFN33/Office/Data/$VER33/a640_exp.cab
https://$URL/$FFN33/Office/Data/$VER33/a640_exp.cab.cat
https://$URL/$FFN33/Office/Data/$VER33/d320.cab
https://$URL/$FFN33/Office/Data/$VER33/d640.cab
https://$URL/$FFN33/Office/Data/$VER33/d32$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/d64$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/i320.c2rx
https://$URL/$FFN33/Office/Data/$VER33/i320.cab
https://$URL/$FFN33/Office/Data/$VER33/i320.cab.cat
https://$URL/$FFN33/Office/Data/$VER33/i640.c2rx
https://$URL/$FFN33/Office/Data/$VER33/i640.cab
https://$URL/$FFN33/Office/Data/$VER33/i640.cab.cat
https://$URL/$FFN33/Office/Data/$VER33/i32$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/i64$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/s320.cab
https://$URL/$FFN33/Office/Data/$VER33/s640.cab
https://$URL/$FFN33/Office/Data/$VER33/s32$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/s64$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/sa640.cab
https://$URL/$FFN33/Office/Data/$VER33/sc320.cab
https://$URL/$FFN33/Office/Data/$VER33/sd320.delta00.cab
https://$URL/$FFN33/Office/Data/$VER33/sd640.delta00.cab
https://$URL/$FFN33/Office/Data/$VER33/sd32$LANGID.delta00.cab
https://$URL/$FFN33/Office/Data/$VER33/sd64$LANGID.delta00.cab
https://$URL/$FFN33/Office/Data/$VER33/sp32$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/sp64$LANGID.cab
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.x-none.arm64x.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.x-none.arm64x.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.x-none.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.x-none.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.x-none.delta00.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.x-none.delta00.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.$LANG.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.$LANG.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.$LANG.delta00.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.$LANG.delta00.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.$LANG.proof.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x64.$LANG.proof.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.x-none.chpe.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.x-none.chpe.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.x-none.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.x-none.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.x-none.delta00.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.x-none.delta00.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.$LANG.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.$LANG.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.$LANG.delta00.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.$LANG.delta00.dat.cat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.$LANG.proof.dat
https://$URL/$FFN33/Office/Data/$VER33/stream.x86.$LANG.proof.dat.cat
https://$URL/$FFN33/Office/Data/C2RFireFlyData.xml
https://$URL/$FFN33/Office/Data/v32.cab
https://$URL/$FFN33/Office/Data/v32_$VER33.cab
https://$URL/$FFN33/Office/Data/v64.cab
https://$URL/$FFN33/Office/Data/v64_$VER33.cab
https://$URL/$FFN33/Office/Data/vu32.cab
https://$URL/$FFN33/Office/Data/vu64.cab
\`\`\`

Available Languages:https://docs.microsoft.com/en-us/openspecs/office_standards/ms-oe376/6c085406-a698-4e12-9d4d-c3b0ee3dbc4a

IMG Download Example(only Retail/RTM Channel):
\`\`\`
Office 2021(16.0.14326.20454):
https://$URL/$FFN33/media/$LANG/Access2021Retail.img
https://$URL/$FFN33/media/$LANG/Excel2021Retail.img
https://$URL/$FFN33/media/$LANG/HomeBusiness2021Retail.img
https://$URL/$FFN33/media/$LANG/HomeStudent2021Retail.img
https://$URL/$FFN33/media/$LANG/Outlook2021Retail.img
https://$URL/$FFN33/media/$LANG/PowerPoint2021Retail.img
https://$URL/$FFN33/media/$LANG/Professional2021Retail.img
https://$URL/$FFN33/media/$LANG/ProjectPro2021Retail.img
https://$URL/$FFN33/media/$LANG/ProjectStd2021Retail.img
https://$URL/$FFN33/media/$LANG/ProPlus2021Retail.img
https://$URL/$FFN33/media/$LANG/Publisher2021Retail.img
https://$URL/$FFN33/media/$LANG/VisioPro2021Retail.img
https://$URL/$FFN33/media/$LANG/VisioStd2021Retail.img
https://$URL/$FFN33/media/$LANG/Word2021Retail.img
Office 2019(16.0.14026.20302):
https://$URL/$FFN33/media/$LANG/Access2019Retail.img
https://$URL/$FFN33/media/$LANG/Excel2019Retail.img
https://$URL/$FFN33/media/$LANG/HomeBusiness2019Retail.img
https://$URL/$FFN33/media/$LANG/HomeStudent2019Retail.img
https://$URL/$FFN33/media/$LANG/Outlook2019Retail.img
https://$URL/$FFN33/media/$LANG/PowerPoint2019Retail.img
https://$URL/$FFN33/media/$LANG/Professional2019Retail.img
https://$URL/$FFN33/media/$LANG/ProjectPro2019Retail.img
https://$URL/$FFN33/media/$LANG/ProjectStd2019Retail.img
https://$URL/$FFN33/media/$LANG/ProPlus2019Retail.img
https://$URL/$FFN33/media/$LANG/Publisher2019Retail.img
https://$URL/$FFN33/media/$LANG/VisioPro2019Retail.img
https://$URL/$FFN33/media/$LANG/VisioStd2019Retail.img
https://$URL/$FFN33/media/$LANG/Word2019Retail.img
Office 2016(16.0.9029.2167):
https://$URL/$FFN33/media/$LANG/AccessRetail.img
https://$URL/$FFN33/media/$LANG/ExcelRetail.img
https://$URL/$FFN33/media/$LANG/HomeBusinessRetail.img
https://$URL/$FFN33/media/$LANG/HomeStudentRetail.img
https://$URL/$FFN33/media/$LANG/O365BusinessRetail.img
https://$URL/$FFN33/media/$LANG/O365HomePremRetail.img
https://$URL/$FFN33/media/$LANG/O365ProPlusRetail.img
https://$URL/$FFN33/media/$LANG/OutlookRetail.img
https://$URL/$FFN33/media/$LANG/PowerPointRetail.img
https://$URL/$FFN33/media/$LANG/ProfessionalRetail.img
https://$URL/$FFN33/media/$LANG/ProjectProRetail.img
https://$URL/$FFN33/media/$LANG/ProjectStdRetail.img
https://$URL/$FFN33/media/$LANG/ProPlusRetail.img
https://$URL/$FFN33/media/$LANG/PublisherRetail.img
https://$URL/$FFN33/media/$LANG/VisioProRetail.img
https://$URL/$FFN33/media/$LANG/VisioStdRetail.img
https://$URL/$FFN33/media/$LANG/WordRetail.img
Office 2013(15.0.4433.1508):
https://$URL/$FFN09/media/$LANG/AccessRetail.img
https://$URL/$FFN09/media/$LANG/ExcelRetail.img
https://$URL/$FFN09/media/$LANG/HomeBusinessRetail.img
https://$URL/$FFN09/media/$LANG/HomeStudentRetail.img
https://$URL/$FFN09/media/$LANG/O365HomePremRetail.img
https://$URL/$FFN09/media/$LANG/OutlookRetail.img
https://$URL/$FFN09/media/$LANG/PowerPointRetail.img
https://$URL/$FFN09/media/$LANG/ProfessionalRetail.img
https://$URL/$FFN09/media/$LANG/ProjectProRetail.img
https://$URL/$FFN09/media/$LANG/ProjectStdRetail.img
https://$URL/$FFN09/media/$LANG/PublisherRetail.img
https://$URL/$FFN09/media/$LANG/VisioProRetail.img
https://$URL/$FFN09/media/$LANG/VisioStdRetail.img
https://$URL/$FFN09/media/$LANG/WordRetail.img
\`\`\`

C2R installer Download Example(only Retail/RTM Channel):
\`\`\`
Office 2016/2019/2021(16.0.14131.20332):
https://$URL/$FFN33/Office/Data/setupaccess2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupaccess2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupaccessretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupaccessretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupaccessruntime2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupaccessruntime2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupaccessruntimeretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupaccessruntimeretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupexcel2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupexcel2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupexcelretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupexcelretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomebusiness2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomebusiness2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomebusinesspipcretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomebusinesspipcretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomebusinessretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomebusinessretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomestudent2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomestudent2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomestudentretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuphomestudentretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuplanguagepack.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuplanguagepack.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365businessretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365businessretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365educloudretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365educloudretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365homepremretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365homepremretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365proplusretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365proplusretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365smallbuspremretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupo365smallbuspremretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuponenotefreeretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuponenotefreeretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuponenoteretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuponenoteretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupoutlook2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupoutlook2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupoutlookretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupoutlookretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppersonal2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppersonal2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppersonalpipcretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppersonalpipcretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppersonalretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppersonalretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppowerpoint2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppowerpoint2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppowerpointretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppowerpointretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprofessional2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprofessional2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprofessionalpipcretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprofessionalpipcretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprofessionalretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprofessionalretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectpro2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectpro2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectproretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectproretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectstd2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectstd2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectstdretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupprojectstdretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupproplus2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupproplus2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupproplusretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupproplusretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppublisher2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppublisher2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppublisherretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setuppublisherretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusiness2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusiness2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusinessentry2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusinessentry2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusinessentryretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusinessentryretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusinessretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeforbusinessretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeservicebypassretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupskypeservicebypassretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisiopro2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisiopro2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisioproretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisioproretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisiostd2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisiostd2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisiostdretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupvisiostdretail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupword2019retail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupword2019retail.x86.$LANG.exe
https://$URL/$FFN33/Office/Data/setupwordretail.x64.$LANG.exe
https://$URL/$FFN33/Office/Data/setupwordretail.x86.$LANG.exe
Office 2013(15.0.5435.1000):
https://$URL/$FFN09/Office/Data/setupaccessretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupaccessretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupexcelretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupexcelretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupgrooveretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupgrooveretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuphomebusinesspipcretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuphomebusinesspipcretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuphomebusinessretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuphomebusinessretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuphomestudentretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuphomestudentretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupinfopathretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupinfopathretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuplyncacademicretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuplyncacademicretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuplyncentryretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuplyncentryretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuplyncretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuplyncretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365businessretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365businessretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365homepremretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365homepremretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365proplusretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365proplusretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365smallbuspremretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupo365smallbuspremretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuponenotefreeretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuponenotefreeretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuponenoteretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuponenoteretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupoutlookretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupoutlookretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppersonalpipcretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppersonalpipcretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppersonalretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppersonalretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppowerpointretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppowerpointretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprofessionalpipcretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprofessionalpipcretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprofessionalretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprofessionalretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprojectproretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprojectproretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprojectstdretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupprojectstdretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupproplusretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupproplusretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppublisherretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setuppublisherretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupspdretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupspdretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupstandardretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupstandardretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupvisioproretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupvisioproretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupvisiostdretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupvisiostdretail.x86.$LANG.exe
https://$URL/$FFN09/Office/Data/setupwordretail.x64.$LANG.exe
https://$URL/$FFN09/Office/Data/setupwordretail.x86.$LANG.exe
\`\`\`
" >/home/runner/work/C2R/C2R/README.MD

grep FFN C2RReleaseData | sort | uniq | tr '[:lower:]' '[:upper:]' >ffn

chmod 644 /home/runner/work/C2R/C2R/*

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git add .
git commit -m "`date`"
git push -f origin master
