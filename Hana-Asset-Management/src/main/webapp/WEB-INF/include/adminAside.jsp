<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Hana Solution</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />   
<link
  href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap"
  rel="stylesheet"
/>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/dashboard/public/build/css/tailwind.css" />
<script src="https://cdn.jsdelivr.net/gh/alpine-collective/alpine-magic-helpers@0.5.x/dist/component.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.7.3/dist/alpine.min.js" defer></script>
</head>
<body>
 <!-- Sidebar -->
 <aside class="flex-shrink-0 hidden w-64 bg-white border-r dark:border-primary-darker dark:bg-darker md:block" style="background-color: #008B8B;">
   <div class="flex flex-col h-full">
     <!-- Sidebar links -->
     <nav aria-label="Main" class="flex-1 px-2 py-4 space-y-2 overflow-y-hidden hover:overflow-y-auto">
       <!-- Dashboards links -->
       <c:if test="${ msg eq 'home' }">
       	<div x-data="{ isActive: true, open: true}">
       </c:if>
       <c:if test="${ msg ne 'home' }">
       	<div x-data="{ isActive: false, open: false}">
       </c:if>
         <!-- active & hover classes 'bg-primary-100 dark:bg-primary' -->
         <a style="color: white;"
           href="${ pageContext.request.contextPath }/"
           @click="$event.preventDefault(); open = !open"
           class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
           :class="{'bg-primary-100 dark:bg-primary': isActive || open}"
           role="button"
           aria-haspopup="true"
           :aria-expanded="(open || isActive) ? 'true' : 'false'"
         >
           <span aria-hidden="true" style="color: white;">
             <svg
               class="w-5 h-5"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path 
                 stroke-linecap="round"
                 stroke-linejoin="round"
                 stroke-width="2"
                 d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
               />
             </svg>
           </span>
           <span class="ml-2 text-sm" style="color: white;"> <strong>홈페이지</strong> </span>
           <span class="ml-auto" aria-hidden="true">
             <!-- active class 'rotate-180' -->
             <svg
               class="w-4 h-4 transition-transform transform"
               :class="{ 'rotate-180': open }"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
             </svg>
           </span>
         </a>
         <div role="menu" x-show="open" class="mt-2 space-y-2 px-7" aria-label="Dashboards">
           <!-- active & hover classes 'text-gray-700 dark:text-light' -->
           <!-- inActive classes 'text-gray-400 dark:text-gray-400' -->
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/myPage"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
           >
             <strong>메인화면으로</strong>
           </a>
           
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:hover:text-light hover:text-gray-700"
           >
             <strong>Hana Solution 홈페이지로</strong>
           </a>
         </div>
       </div>

       <!-- Pages links -->
       <c:if test="${ msg eq 'report' }">
       	<div x-data="{ isActive: true, open: true}">
       </c:if>
       <c:if test="${ msg ne 'report' }">
       	<div x-data="{ isActive: false, open: false}">
       </c:if>
         <!-- active classes 'bg-primary-100 dark:bg-primary' -->
         <a style="color: white;"
           href="#"
           @click="$event.preventDefault(); open = !open"
           class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
           :class="{ 'bg-primary-100 dark:bg-primary': isActive || open }"
           role="button"
           aria-haspopup="true"
           :aria-expanded="(open || isActive) ? 'true' : 'false'"
         >
           <span aria-hidden="true">
             <svg style="color: white;"
               class="w-5 h-5"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path
                 stroke-linecap="round"
                 stroke-linejoin="round"
                 stroke-width="2"
                 d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z"
               />
             </svg>
           </span>
           <span class="ml-2 text-sm" style="color: white;"><strong>보고서</strong>  </span>
           <span aria-hidden="true" class="ml-auto">
             <!-- active class 'rotate-180' -->
             <svg
               class="w-4 h-4 transition-transform transform"
               :class="{ 'rotate-180': open }"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
             </svg>
           </span>
         </a>
         <div x-show="open" class="mt-2 space-y-2 px-7" role="menu" arial-label="Pages">
           <!-- active & hover classes 'text-gray-700 dark:text-light' -->
           <!-- inActive classes 'text-gray-400 dark:text-gray-400' -->
           <c:if test="${ myReport eq 'assetReport' or  myReport eq 'investStyle' }">
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/myPage/assetReport"
             role="menuitem"
             class="block p-2 text-sm text-gray-700 transition-colors duration-200 rounded-md dark:text-light dark:hover:text-light hover:text-gray-700"
           	 style="color: #3CC8C8"
           >
            <strong> 자산운용보고서</strong>
           </a>
           </c:if>
           <c:if test="${ myReport ne 'assetReport' and  myReport ne 'investStyle' }">
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/myPage/assetReport"
             role="menuitem"
             class="block p-2 text-sm text-gray-700 transition-colors duration-200 rounded-md dark:text-light dark:hover:text-light hover:text-gray-700"
           >
             <strong>자산운용보고서</strong>
           </a>
           </c:if>
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/resources/dashboard/public/pages/404.html"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
           >
             <strong>재무상태분석보고서</strong>
           </a>
           <c:if test="${ myReport eq 'expenseReport' }">
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/myPage/expenseReport"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
           	 style="color: #3CC8C8"
           >
             <strong>소비지출분석보고서</strong>
           </a>
           </c:if>
           <c:if test="${ myReport ne 'expenseReport' }">
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/myPage/expenseReport"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
           >
             <strong>소비지출분석보고서</strong>
           </a>
           </c:if>
         </div>
       </div>

       <!-- Authentication links -->
       <div x-data="{ isActive: false, open: false}">
         <!-- active & hover classes 'bg-primary-100 dark:bg-primary' -->
         <a style="color: white;"
           href="#"
           @click="$event.preventDefault(); open = !open"
           class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
           :class="{'bg-primary-100 dark:bg-primary': isActive || open}"
           role="button"
           aria-haspopup="true"
           :aria-expanded="(open || isActive) ? 'true' : 'false'"
         >
           <span aria-hidden="true">
             <svg style="color: white;"
               class="w-5 h-5"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path
                 stroke-linecap="round"
                 stroke-linejoin="round"
                 stroke-width="2"
                 d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
               />
             </svg>
           </span>
           <span class="ml-2 text-sm" style="color: white;"> <strong>고객관리</strong> </span>
           <span aria-hidden="true" class="ml-auto">
             <!-- active class 'rotate-180' -->
             <svg style="color: white;"
               class="w-4 h-4 transition-transform transform"
               :class="{ 'rotate-180': open }"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
             </svg>
           </span>
         </a>
         <div x-show="open" class="mt-2 space-y-2 px-7" role="menu" aria-label="Authentication">
           <!-- active & hover classes 'text-gray-700 dark:text-light' -->
           <!-- inActive classes 'text-gray-400 dark:text-gray-400' -->
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/resources/dashboard/public/auth/register.html"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:hover:text-light hover:text-gray-700"
           >
             <strong>고객정보</strong>
           </a>
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/myPage/expense"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
           >
             <strong>회원 포트폴리오</strong>
           </a>
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/resources/dashboard/public/auth/login.html"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:hover:text-light hover:text-gray-700"
           >
             <strong>mail/sms 발송</strong>
           </a>
         </div>
       </div>

       <!-- Layouts links -->
       <div x-data="{ isActive: false, open: false}">
         <!-- active & hover classes 'bg-primary-100 dark:bg-primary' -->
         <a style="color: white;"
           href="#"
           @click="$event.preventDefault(); open = !open"
           class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
           :class="{'bg-primary-100 dark:bg-primary': isActive || open}"
           role="button"
           aria-haspopup="true"
           :aria-expanded="(open || isActive) ? 'true' : 'false'"
         >
           <span aria-hidden="true">
             <svg style="color: white;"
               class="w-5 h-5"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path
                 stroke-linecap="round"
                 stroke-linejoin="round"
                 stroke-width="2"
                 d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z"
               />
             </svg>
           </span>
           <span class="ml-2 text-sm" style="color: white;"> <strong>스케줄</strong> </span>
           <span aria-hidden="true" class="ml-auto">
             <!-- active class 'rotate-180' -->
             <svg
               class="w-4 h-4 transition-transform transform"
               :class="{ 'rotate-180': open }"
               xmlns="http://www.w3.org/2000/svg"
               fill="none"
               viewBox="0 0 24 24"
               stroke="currentColor"
             >
               <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
             </svg>
           </span>
         </a>
         <div x-show="open" class="mt-2 space-y-2 px-7" role="menu" aria-label="Layouts">
           <!-- active & hover classes 'text-gray-700 dark:text-light' -->
           <!-- inActive classes 'text-gray-400 dark:text-gray-400' -->
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/resources/dashboard/public/layouts/two-columns-sidebar.html"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
           >
             <strong>나의 일정</strong>
           </a>
           <a style="color: white;"
             href="${ pageContext.request.contextPath }/resources/dashboard/public/layouts/mini-plus-one-columns-sidebar.html"
             role="menuitem"
             class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
           >
             <strong>업무등록</strong>
           </a>
         </div>
       </div>
     </nav>

     <!-- Sidebar footer -->
     <div class="flex-shrink-0 px-2 py-4 space-y-2">
       <button
         @click="openSettingsPanel"
         type="button"
         class="flex items-center justify-center w-full px-4 py-2 text-sm text-white rounded-md bg-primary hover:bg-primary-dark focus:outline-none focus:ring focus:ring-primary-dark focus:ring-offset-1 focus:ring-offset-white dark:focus:ring-offset-dark"
       >
         <span aria-hidden="true">
           <svg
             class="w-4 h-4 mr-2"
             xmlns="http://www.w3.org/2000/svg"
             fill="none"
             viewBox="0 0 24 24"
             stroke="currentColor"
           >
             <path
               stroke-linecap="round"
               stroke-linejoin="round"
               stroke-width="2"
               d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4"
             />
           </svg>
         </span>
         <span>Setting</span>
       </button>
     </div>
   </div>
 </aside>
</body>
</html>