<%/*

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

*/%>
<%/*

    page_noaside.gsp: A main area with no aside.

*/%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <%include "templatesparts/head.gsp"%>
  <body>
    <%include "templatesparts/menu.gsp"%>
    <%include "templatesparts/news.gsp"%>
    <div class='grid-container main-content'>
      <h1 class="sect1">${content.title}</h1>
      <% 
      def needreview=false
      for ( atag in content.tags ) {
          if (atag=='needsreview') {
              needreview = true
          }
      }
      if (needreview) { %>
      <%include "templatesparts/wiki-index.gsp"%>
      <% } else { %>
      <%include "templatesparts/wiki-devbread.gsp"%>
      <% } %>
      ${content.body}
      <%include "templatesparts/tools.gsp"%>
    </div>
    <%include "templatesparts/footer.gsp"%>
    <%include "templatesparts/scripts.gsp"%>
  </body>
</html>
