# 20775A: Performing Data Engineering on Microsoft HDInsight

## What are we doing?

- To support course 20775 PPerforming Data Engineering on Microsoft HDInsight, we will need to make frequent updates to the course content to keep it current with the Azure services used in the course. We are publishing the lab instructions and lab files on GitHub to allow for open contributions between the course authors and MCTs to keep the content current with changes in the Azure platform.
- We hope that this brings a sense of collaboration to the labs like we've never had before - when Azure changes and you find it first during a live delivery, go ahead and make an enhancement right in the lab source. Help your fellow MCTs.

## How should I use these files relative to the released MOC files?

- The instructor handbook and PowerPoints are still going to be your primary source for teaching the course content.
- These files on GitHub are designed to be used in conjunction with the student handbook, but are in GitHub as a central repository so MCTs and course authors can have a shared source for the latest lab files.
- It is recommended that for every delivery of 20775, trainers check GitHub for any changes that may have been made to support the latest Azure services, and get the latest files for their delivery.

## What about changes to the student handbook?

- We will review the student handbook (including demos) on a quarterly basis and update through the normal MOC release channels as needed.

## How do I contribute?

- Any MCT can submit a pull request to the code or content in the GitHub repro, Microsoft and the course author will triage and include content and lab code changes as needed.

- You can submit bugs, changes, improvement and ideas.  Find a new Azure feature before we have?  Submit a new demo!

## Notes

### Classroom Materials

It is strongly recommended that MCTs and Partners access these materials and in turn, provide them separately to students.  Pointing students directly to GitHub to access Lab steps as part of an ongoing class will require them to access yet another UI as part of the course, contributing to a confusing experience for the student. An explanation to the student regarding why they are receiving separate Lab instructions can highlight the nature of an always-changing cloud-based interface and platform. Microsoft Learning support for accessing files on GitHub and support for navigation of the GitHub site is limited to MCTs teaching this course only.

GitHub should not be used to discuss technical content in the course, or how to prep. It is specifically to address changes in the labs.

- To address general comments about the course & demos or how to prepare for 20775, please use the MCT forums at https://borntolearn.mslearn.net/mct/general/f/225. This is the MCT Readiness forum for discussions, news, etc. to help you prepare to teach courses and let you collaborate with other instructors.

> **MCTs:** Refer to the '20775AGitHubUserGuideforMCTs.pdf' file on the Download Center for detailed instructions for using GitHub. This document is also available on the GitHub repo as [20775A GitHub UserGuide for MCTs](20775AGitHubUserGuideforMCTs.md).  

### Powershell

After you download the latest lab files from GitHub and copy them to the student computers, ensure that the student computer is restarted before students start the labs. This ensures that any PowerShell modules that have previously been run will be replaced in memory by the latest versions. In addition, since the scripts on GitHub are not code-signed, students need to run the following command to ensure that the scripts will run:

    Set-ExecutionPolicy –ExecutionPolicy Bypass –Force

This command should be run at the beginning of the class, and applied to the VM image if possible.