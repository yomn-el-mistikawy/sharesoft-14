




<!DOCTYPE html>
<html class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <title>Sharesoft-14/StartupMaps/blog/app/models/entity_work_status.rb at c56240130d127459987d33fd09c5844f2485a589 · Saftophobia/Sharesoft-14 · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="Saftophobia/Sharesoft-14" name="twitter:title" /><meta content="Sharesoft-14 " name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/2143531?s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/2143531?s=400" property="og:image" /><meta content="Saftophobia/Sharesoft-14" property="og:title" /><meta content="https://github.com/Saftophobia/Sharesoft-14" property="og:url" /><meta content="Sharesoft-14 " property="og:description" />

    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />

    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="C5877FF7:545C:804A01:537102DA" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://github.global.ssl.fastly.net/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="3yfplYGDby3BDa0y8F0rKBUWZiIQSldu+OI5loLwv3+qSVyEX6Zs006W5d1qz3lwgsw5r4lCLoKor57/rZwt1A==" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-58e181c5cf58206dac2f13d435da7a71ca165593.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-1a3c410b868af7031a33d9c381adc57fbdd76b68.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="8d3812e005f9ff2b254914e5f873c6f0">

      
  <meta name="description" content="Sharesoft-14 " />

  <meta content="2143531" name="octolytics-dimension-user_id" /><meta content="Saftophobia" name="octolytics-dimension-user_login" /><meta content="17185637" name="octolytics-dimension-repository_id" /><meta content="Saftophobia/Sharesoft-14" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="17185637" name="octolytics-dimension-repository_network_root_id" /><meta content="Saftophobia/Sharesoft-14" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/Saftophobia/Sharesoft-14/commits/c56240130d127459987d33fd09c5844f2485a589.atom" rel="alternate" title="Recent Commits to Sharesoft-14:c56240130d127459987d33fd09c5844f2485a589" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production linux vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2FSaftophobia%2FSharesoft-14%2Fblob%2Fc56240130d127459987d33fd09c5844f2485a589%2FStartupMaps%2Fblog%2Fapp%2Fmodels%2Fentity_work_status.rb">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="Saftophobia/Sharesoft-14"
      data-branch="c56240130d127459987d33fd09c5844f2485a589"
      data-sha="14036686d7d603cf82f13a435b7798d4373c3c5b"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="Saftophobia/Sharesoft-14" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
    <a href="/login?return_to=%2FSaftophobia%2FSharesoft-14"
    class="minibutton with-count star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/Saftophobia/Sharesoft-14/stargazers">
      0
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2FSaftophobia%2FSharesoft-14"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/Saftophobia/Sharesoft-14/network" class="social-count">
        4
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/Saftophobia" class="url fn" itemprop="url" rel="author"><span itemprop="title">Saftophobia</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/Saftophobia/Sharesoft-14" class="js-current-repository js-repo-home-link">Sharesoft-14</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/Saftophobia/Sharesoft-14" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /Saftophobia/Sharesoft-14">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/Saftophobia/Sharesoft-14/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues /Saftophobia/Sharesoft-14/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>147</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/Saftophobia/Sharesoft-14/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /Saftophobia/Sharesoft-14/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>58</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped tooltipped-w" aria-label="Wiki">
          <a href="/Saftophobia/Sharesoft-14/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g w" data-selected-links="repo_wiki /Saftophobia/Sharesoft-14/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/Saftophobia/Sharesoft-14/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /Saftophobia/Sharesoft-14/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/Saftophobia/Sharesoft-14/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /Saftophobia/Sharesoft-14/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Network">
        <a href="/Saftophobia/Sharesoft-14/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /Saftophobia/Sharesoft-14/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/Saftophobia/Sharesoft-14.git" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/Saftophobia/Sharesoft-14.git" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/Saftophobia/Sharesoft-14" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/Saftophobia/Sharesoft-14" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>



                <a href="/Saftophobia/Sharesoft-14/archive/c56240130d127459987d33fd09c5844f2485a589.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download Saftophobia/Sharesoft-14 as a zip file"
                   title="Download Saftophobia/Sharesoft-14 as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/Saftophobia/Sharesoft-14/blob/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog/app/models/entity_work_status.rb" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:9c18e1c040cb6bb0b90812160c2db4d9 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/Saftophobia/Sharesoft-14/find/c56240130d127459987d33fd09c5844f2485a589" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref=""
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>tree:</i>
    <span class="js-select-button">c56240130d</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/%23243/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="#243"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="#243">#243</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/Added_column_in_startups_badges_%23217/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="Added_column_in_startups_badges_#217"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="Added_column_in_startups_badges_#217">Added_column_in_startups_badges_#217</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/Adel_Class_Diagram/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="Adel_Class_Diagram"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="Adel_Class_Diagram">Adel_Class_Diagram</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/AliaTarek_Profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="AliaTarek_Profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="AliaTarek_Profile">AliaTarek_Profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/AmrGamal_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="AmrGamal_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="AmrGamal_profile">AmrGamal_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Essam_Startup_Join_Public_Group%2395/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Essam_Startup_Join_Public_Group#95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Essam_Startup_Join_Public_Group#95">C1_Essam_Startup_Join_Public_Group#95</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Essam_Startup_Join_Public_Group_%2395/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Essam_Startup_Join_Public_Group_#95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Essam_Startup_Join_Public_Group_#95">C1_Essam_Startup_Join_Public_Group_#95</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Essam_Upload_Files_or_Attachments%23124/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Essam_Upload_Files_or_Attachments#124"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Essam_Upload_Files_or_Attachments#124">C1_Essam_Upload_Files_or_Attachments#124</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Essam_add_files_or_attachments%23124/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Essam_add_files_or_attachments#124"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Essam_add_files_or_attachments#124">C1_Essam_add_files_or_attachments#124</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Essam_startup_join_public_group_%2393/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Essam_startup_join_public_group_#93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Essam_startup_join_public_group_#93">C1_Essam_startup_join_public_group_#93</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Essam_user_join_public_group/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Essam_user_join_public_group"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Essam_user_join_public_group">C1_Essam_user_join_public_group</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Samar_AddDescriptionToGroup/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Samar_AddDescriptionToGroup"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Samar_AddDescriptionToGroup">C1_Samar_AddDescriptionToGroup</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Samar_Homepage_Design_%23259/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Samar_Homepage_Design_#259"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Samar_Homepage_Design_#259">C1_Samar_Homepage_Design_#259</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Samar_groupmember_like_post_%23141/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Samar_groupmember_like_post_#141"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Samar_groupmember_like_post_#141">C1_Samar_groupmember_like_post_#141</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_SamarFikri_As_a_group_member_I_should_be_able_to_like_a_comment_%23140/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_SamarFikri_As_a_group_member_I_should_be_able_to_like_a_comment_#140"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_SamarFikri_As_a_group_member_I_should_be_able_to_like_a_comment_#140">C1_SamarFikri_As_a_group_member_I_should_be_able_to_like_a_comment_#140</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Sherouk_create_group_%23127/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Sherouk_create_group_#127"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Sherouk_create_group_#127">C1_Sherouk_create_group_#127</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_Sherouk_send_and_respond_to_join_private_group_%2357/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_Sherouk_send_and_respond_to_join_private_group_#57"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_Sherouk_send_and_respond_to_join_private_group_#57">C1_Sherouk_send_and_respond_to_join_private_group_#57</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_maha_adding_comments_%23137/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_maha_adding_comments_#137"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_maha_adding_comments_#137">C1_maha_adding_comments_#137</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_maha_geographic_groups/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_maha_geographic_groups"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_maha_geographic_groups">C1_maha_geographic_groups</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C1_maha_join_startup_to_geographic_group_%2358/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C1_maha_join_startup_to_geographic_group_#58"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C1_maha_join_startup_to_geographic_group_#58">C1_maha_join_startup_to_geographic_group_#58</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Hana_Create_Project_%23227/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Hana_Create_Project_#227"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Hana_Create_Project_#227">C2_Hana_Create_Project_#227</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Hana_Edit_Project_%2356/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Hana_Edit_Project_#56"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Hana_Edit_Project_#56">C2_Hana_Edit_Project_#56</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Hana_Edit_Project_%23216/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Hana_Edit_Project_#216"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Hana_Edit_Project_#216">C2_Hana_Edit_Project_#216</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Hana_Launch_Project_%23133/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Hana_Launch_Project_#133"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Hana_Launch_Project_#133">C2_Hana_Launch_Project_#133</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Hana_Launch_Projects_%23133/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Hana_Launch_Projects_#133"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Hana_Launch_Projects_#133">C2_Hana_Launch_Projects_#133</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Hana_List_Projects_%23132/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Hana_List_Projects_#132"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Hana_List_Projects_#132">C2_Hana_List_Projects_#132</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Mohamed_Sharawy_sign_in_using_facebook_linkedin_google_accounts_twitter_%23239/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Mohamed_Sharawy_sign_in_using_facebook_linkedin_google_accounts_twitter_#239"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Mohamed_Sharawy_sign_in_using_facebook_linkedin_google_accounts_twitter_#239">C2_Mohamed_Sharawy_sign_in_using_facebook_linkedin_google_accounts_twitter_#239</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Mozdan_The_entity_work_portfolio_%23129/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Mozdan_The_entity_work_portfolio_#129"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Mozdan_The_entity_work_portfolio_#129">C2_Mozdan_The_entity_work_portfolio_#129</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Mozdan_search_engine_%23240/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Mozdan_search_engine_#240"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Mozdan_search_engine_#240">C2_Mozdan_search_engine_#240</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Mozdan_send_merge_request_%2365/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Mozdan_send_merge_request_#65"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Mozdan_send_merge_request_#65">C2_Mozdan_send_merge_request_#65</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Mozdan_send_merge_requests/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Mozdan_send_merge_requests"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Mozdan_send_merge_requests">C2_Mozdan_send_merge_requests</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Yomn_El-Mistikawy_Implement_an_achievement_system_%23217/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Yomn_El-Mistikawy_Implement_an_achievement_system_#217"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Yomn_El-Mistikawy_Implement_an_achievement_system_#217">C2_Yomn_El-Mistikawy_Implement_an_achievement_system_#217</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Yomn_El-Mistikawy_impression_migration_file_%23217/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Yomn_El-Mistikawy_impression_migration_file_#217"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Yomn_El-Mistikawy_impression_migration_file_#217">C2_Yomn_El-Mistikawy_impression_migration_file_#217</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Yomn_add_needed_migration_files/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Yomn_add_needed_migration_files"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Yomn_add_needed_migration_files">C2_Yomn_add_needed_migration_files</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Yomn_show_a_list_of_group_members_%23120/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Yomn_show_a_list_of_group_members_#120"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Yomn_show_a_list_of_group_members_#120">C2_Yomn_show_a_list_of_group_members_#120</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Yomn_suggest_projects_%2355/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Yomn_suggest_projects_#55"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Yomn_suggest_projects_#55">C2_Yomn_suggest_projects_#55</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Yomn_suggests_projects/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Yomn_suggests_projects"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Yomn_suggests_projects">C2_Yomn_suggests_projects</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_Ziad-Abdelkader_RespondToMergeRequests/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_Ziad-Abdelkader_RespondToMergeRequests"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_Ziad-Abdelkader_RespondToMergeRequests">C2_Ziad-Abdelkader_RespondToMergeRequests</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_ZiadAbdelkader_RespondToMergeRequests_%2374/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_ZiadAbdelkader_RespondToMergeRequests_#74"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_ZiadAbdelkader_RespondToMergeRequests_#74">C2_ZiadAbdelkader_RespondToMergeRequests_#74</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_ZiadAbdelkader_SendMergeRequests_%23228/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_ZiadAbdelkader_SendMergeRequests_#228"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_ZiadAbdelkader_SendMergeRequests_#228">C2_ZiadAbdelkader_SendMergeRequests_#228</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_ZiadAbdelkader_SubscribeToEntities_%23229/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_ZiadAbdelkader_SubscribeToEntities_#229"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_ZiadAbdelkader_SubscribeToEntities_#229">C2_ZiadAbdelkader_SubscribeToEntities_#229</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_ZiadAbdelkader_SubscribingForUpdates_%23122/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_ZiadAbdelkader_SubscribingForUpdates_#122"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_ZiadAbdelkader_SubscribingForUpdates_#122">C2_ZiadAbdelkader_SubscribingForUpdates_#122</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_hana_edit_project/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_hana_edit_project"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_hana_edit_project">C2_hana_edit_project</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_hana_edit_projects/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_hana_edit_projects"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_hana_edit_projects">C2_hana_edit_projects</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_mohamed_sharawy_showing_progress_on_facebook_%23235/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_mohamed_sharawy_showing_progress_on_facebook_#235"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_mohamed_sharawy_showing_progress_on_facebook_#235">C2_mohamed_sharawy_showing_progress_on_facebook_#235</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C2_mohamed_sharawy_showing_progress_on_twitter_%23236/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C2_mohamed_sharawy_showing_progress_on_twitter_#236"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C2_mohamed_sharawy_showing_progress_on_twitter_#236">C2_mohamed_sharawy_showing_progress_on_twitter_#236</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Alia_control_markers_%23220/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Alia_control_markers_#220"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Alia_control_markers_#220">C3_Alia_control_markers_#220</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Alia_show_layers_%2372/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Alia_show_layers_#72"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Alia_show_layers_#72">C3_Alia_show_layers_#72</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Alia_show_map_%23218/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Alia_show_map_#218"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Alia_show_map_#218">C3_Alia_show_map_#218</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Alia_showLayers/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Alia_showLayers"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Alia_showLayers">C3_Alia_showLayers</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Heba_Abdelfattah_Show_Information_Of_Merged_Startups_%2383/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Heba_Abdelfattah_Show_Information_Of_Merged_Startups_#83"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Heba_Abdelfattah_Show_Information_Of_Merged_Startups_#83">C3_Heba_Abdelfattah_Show_Information_Of_Merged_Startups_#83</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Heba_ShowMerged/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Heba_ShowMerged"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Heba_ShowMerged">C3_Heba_ShowMerged</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_HebaAbdelfattah_SignupMap/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_HebaAbdelfattah_SignupMap"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_HebaAbdelfattah_SignupMap">C3_HebaAbdelfattah_SignupMap</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Mina_Ashraf_List_Group_Members_%23249/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Mina_Ashraf_List_Group_Members_#249"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Mina_Ashraf_List_Group_Members_#249">C3_Mina_Ashraf_List_Group_Members_#249</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Mina_Control_Map_%23138/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Mina_Control_Map_#138"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Mina_Control_Map_#138">C3_Mina_Control_Map_#138</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_Mina_List_Group_Members_%23249/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_Mina_List_Group_Members_#249"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_Mina_List_Group_Members_#249">C3_Mina_List_Group_Members_#249</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_mohamed_Choosing_sectors_%2371/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_mohamed_Choosing_sectors_#71"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_mohamed_Choosing_sectors_#71">C3_mohamed_Choosing_sectors_#71</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_mohamed_choosing_sectors/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_mohamed_choosing_sectors"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_mohamed_choosing_sectors">C3_mohamed_choosing_sectors</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_youssef_attaby_enableanddisableemailnotifications_%23246/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_youssef_attaby_enableanddisableemailnotifications_#246"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_youssef_attaby_enableanddisableemailnotifications_#246">C3_youssef_attaby_enableanddisableemailnotifications_#246</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_youssef_attaby_showmarkersonmaps_%2364/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_youssef_attaby_showmarkersonmaps_#64"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_youssef_attaby_showmarkersonmaps_#64">C3_youssef_attaby_showmarkersonmaps_#64</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_youssef_attaby_updateuserwithpostcomment_%23245/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_youssef_attaby_updateuserwithpostcomment_#245"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_youssef_attaby_updateuserwithpostcomment_#245">C3_youssef_attaby_updateuserwithpostcomment_#245</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C3_youssefattaby_Map%236/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C3_youssefattaby_Map#6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C3_youssefattaby_Map#6">C3_youssefattaby_Map#6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Adel_sign_up/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Adel_sign_up"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Adel_sign_up">C4_Adel_sign_up</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_AdelBadawy_BadCodeRemoval/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_AdelBadawy_BadCodeRemoval"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_AdelBadawy_BadCodeRemoval">C4_AdelBadawy_BadCodeRemoval</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_AdelBadawy_ChoosePreferences_%23226/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_AdelBadawy_ChoosePreferences_#226"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_AdelBadawy_ChoosePreferences_#226">C4_AdelBadawy_ChoosePreferences_#226</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_AdelBadawy_InternshipAvailability_%23143/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_AdelBadawy_InternshipAvailability_#143"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_AdelBadawy_InternshipAvailability_#143">C4_AdelBadawy_InternshipAvailability_#143</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_AdelBadawy_SignUp_%2359/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_AdelBadawy_SignUp_#59"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_AdelBadawy_SignUp_#59">C4_AdelBadawy_SignUp_#59</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Ola_Migration_Entity_Status_%23162/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Ola_Migration_Entity_Status_#162"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Ola_Migration_Entity_Status_#162">C4_Ola_Migration_Entity_Status_#162</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Ola_edit_email_and_password_%23145/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Ola_edit_email_and_password_#145"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Ola_edit_email_and_password_#145">C4_Ola_edit_email_and_password_#145</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Ola_entity_edit_work_status_%2378/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Ola_entity_edit_work_status_#78"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Ola_entity_edit_work_status_#78">C4_Ola_entity_edit_work_status_#78</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Ola_startup_company_status_%23244/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Ola_startup_company_status_#244"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Ola_startup_company_status_#244">C4_Ola_startup_company_status_#244</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Ola_update_status_%23144/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Ola_update_status_#144"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Ola_update_status_#144">C4_Ola_update_status_#144</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_OlaEnaba_Work_Status/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_OlaEnaba_Work_Status"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_OlaEnaba_Work_Status">C4_OlaEnaba_Work_Status</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Omar_add_completed_column_%23233/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Omar_add_completed_column_#233"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Omar_add_completed_column_#233">C4_Omar_add_completed_column_#233</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Sarah_Fathallah_Messages_Migration_Files_%23237/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Sarah_Fathallah_Messages_Migration_Files_#237"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Sarah_Fathallah_Messages_Migration_Files_#237">C4_Sarah_Fathallah_Messages_Migration_Files_#237</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Sarah_Fathallah_Messaging_System_between_investor_and_startups_%23237/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Sarah_Fathallah_Messaging_System_between_investor_and_startups_#237"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Sarah_Fathallah_Messaging_System_between_investor_and_startups_#237">C4_Sarah_Fathallah_Messaging_System_between_investor_and_startups_#237</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Sarah_Fathallah_Send_and_Respond_To_Friend_Request_%23118_%23119/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Sarah_Fathallah_Send_and_Respond_To_Friend_Request_#118_#119"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Sarah_Fathallah_Send_and_Respond_To_Friend_Request_#118_#119">C4_Sarah_Fathallah_Send_and_Respond_To_Friend_Request_#118_#119</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Tharey_As_an_entity_I_should_be_able_to_control_my_information_privacy_%23250/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Tharey_As_an_entity_I_should_be_able_to_control_my_information_privacy_#250"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Tharey_As_an_entity_I_should_be_able_to_control_my_information_privacy_#250">C4_Tharey_As_an_entity_I_should_be_able_to_control_my_information_privacy_#250</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Tharey_ElDeen_entity_social_Links_%23206/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Tharey_ElDeen_entity_social_Links_#206"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Tharey_ElDeen_entity_social_Links_#206">C4_Tharey_ElDeen_entity_social_Links_#206</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Tharey_ElDeen_log_in_%23160/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Tharey_ElDeen_log_in_#160"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Tharey_ElDeen_log_in_#160">C4_Tharey_ElDeen_log_in_#160</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Tharey_Qayed_jobs_needs_goals_%23114/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Tharey_Qayed_jobs_needs_goals_#114"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Tharey_Qayed_jobs_needs_goals_#114">C4_Tharey_Qayed_jobs_needs_goals_#114</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_Tharey_Qayed_publish_videos_%23136/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_Tharey_Qayed_publish_videos_#136"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_Tharey_Qayed_publish_videos_#136">C4_Tharey_Qayed_publish_videos_#136</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_omar_account_verifcation/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_omar_account_verifcation"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_omar_account_verifcation">C4_omar_account_verifcation</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_omar_elmenawy_Account_verification_%2377/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_omar_elmenawy_Account_verification_#77"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_omar_elmenawy_Account_verification_#77">C4_omar_elmenawy_Account_verification_#77</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_omar_elmenawy_retrieve_password_%23130/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_omar_elmenawy_retrieve_password_#130"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_omar_elmenawy_retrieve_password_#130">C4_omar_elmenawy_retrieve_password_#130</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_omar_elmenawy_signup_%23233/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_omar_elmenawy_signup_#233"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_omar_elmenawy_signup_#233">C4_omar_elmenawy_signup_#233</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_omar_elmenawy_verification_e_mail_%2377/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_omar_elmenawy_verification_e_mail_#77"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_omar_elmenawy_verification_e_mail_#77">C4_omar_elmenawy_verification_e_mail_#77</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_sarah_fathallah_Send_Friend_Request_%23118/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_sarah_fathallah_Send_Friend_Request_#118"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_sarah_fathallah_Send_Friend_Request_#118">C4_sarah_fathallah_Send_Friend_Request_#118</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_sarah_view_investors/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_sarah_view_investors"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_sarah_view_investors">C4_sarah_view_investors</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/C4_thareyqayed_publishvideo_jobs/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="C4_thareyqayed_publishvideo_jobs"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="C4_thareyqayed_publishvideo_jobs">C4_thareyqayed_publishvideo_jobs</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/Database/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="Database"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="Database">Database</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/FinalDatabase/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="FinalDatabase"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="FinalDatabase">FinalDatabase</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/Mozdan_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="Mozdan_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="Mozdan_profile">Mozdan_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/SM_Safty_Add_Info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="SM_Safty_Add_Info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="SM_Safty_Add_Info">SM_Safty_Add_Info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/Samar_Profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="Samar_Profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="Samar_Profile">Samar_Profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/Sandra_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="Sandra_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="Sandra_profile">Sandra_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Adel_Badawy_22-2932_Profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Adel_Badawy_22-2932_Profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Adel_Badawy_22-2932_Profile">T17_Adel_Badawy_22-2932_Profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Adel_Zee_22-2932_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Adel_Zee_22-2932_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Adel_Zee_22-2932_add_info">T17_Adel_Zee_22-2932_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Alia_Tarek_25-2039_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Alia_Tarek_25-2039_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Alia_Tarek_25-2039_add_info">T17_Alia_Tarek_25-2039_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_AliaTarek_25-2039_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_AliaTarek_25-2039_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_AliaTarek_25-2039_add_info">T17_AliaTarek_25-2039_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Hana_Magdy_25-8680_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Hana_Magdy_25-8680_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Hana_Magdy_25-8680_add_info">T17_Hana_Magdy_25-8680_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_HanaMagdy_25-8680_Profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_HanaMagdy_25-8680_Profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_HanaMagdy_25-8680_Profile">T17_HanaMagdy_25-8680_Profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_HanaMagdy_25-8680_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_HanaMagdy_25-8680_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_HanaMagdy_25-8680_add_info">T17_HanaMagdy_25-8680_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Heba_25-2104_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Heba_25-2104_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Heba_25-2104_add_info">T17_Heba_25-2104_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_OlaEnaba_25-1336_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_OlaEnaba_25-1336_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_OlaEnaba_25-1336_add_info">T17_OlaEnaba_25-1336_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_OlaEnaba_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_OlaEnaba_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_OlaEnaba_profile">T17_OlaEnaba_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Samar_25-6357_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Samar_25-6357_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Samar_25-6357_add_info">T17_Samar_25-6357_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Sherouk_Abdelaal_1/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Sherouk_Abdelaal_1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Sherouk_Abdelaal_1">T17_Sherouk_Abdelaal_1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Sherouk_Abdelaal_25-9915_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Sherouk_Abdelaal_25-9915_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Sherouk_Abdelaal_25-9915_add_info">T17_Sherouk_Abdelaal_25-9915_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Sherouk_Abdelaal_25-9915_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Sherouk_Abdelaal_25-9915_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Sherouk_Abdelaal_25-9915_profile">T17_Sherouk_Abdelaal_25-9915_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Tharey_Profiles/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Tharey_Profiles"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Tharey_Profiles">T17_Tharey_Profiles</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Yomn_El-Mistikawy_25-0571_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Yomn_El-Mistikawy_25-0571_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Yomn_El-Mistikawy_25-0571_add_info">T17_Yomn_El-Mistikawy_25-0571_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Yomn_El-Mistikawy_25-0571_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Yomn_El-Mistikawy_25-0571_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Yomn_El-Mistikawy_25-0571_profile">T17_Yomn_El-Mistikawy_25-0571_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_Ziad_22-883_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_Ziad_22-883_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_Ziad_22-883_add_info">T17_Ziad_22-883_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_maha_6521_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_maha_6521_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_maha_6521_add_info">T17_maha_6521_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_omar_16-10049_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_omar_16-10049_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_omar_16-10049_add_info">T17_omar_16-10049_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_omar_16-10049_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_omar_16-10049_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_omar_16-10049_profile">T17_omar_16-10049_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_sandra_592/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_sandra_592"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_sandra_592">T17_sandra_592</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/T17_youssef_25-10319_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="T17_youssef_25-10319_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="T17_youssef_25-10319_add_info">T17_youssef_25-10319_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/Ziad_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="Ziad_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="Ziad_profile">Ziad_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/add_join_request_model/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="add_join_request_model"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="add_join_request_model">add_join_request_model</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/adding_migration_files/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="adding_migration_files"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="adding_migration_files">adding_migration_files</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c1_nardeen_groups_invitation_%2368/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c1_nardeen_groups_invitation_#68"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c1_nardeen_groups_invitation_#68">c1_nardeen_groups_invitation_#68</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c1_nardeen_inviteUsersToGroup-%2368/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c1_nardeen_inviteUsersToGroup-#68"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c1_nardeen_inviteUsersToGroup-#68">c1_nardeen_inviteUsersToGroup-#68</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c1_nardeen_post_in_group_%23142/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c1_nardeen_post_in_group_#142"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c1_nardeen_post_in_group_#142">c1_nardeen_post_in_group_#142</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c1_nardeen_postInGroup-%23142/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c1_nardeen_postInGroup-#142"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c1_nardeen_postInGroup-#142">c1_nardeen_postInGroup-#142</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c1_sherouk_joinrequest/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c1_sherouk_joinrequest"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c1_sherouk_joinrequest">c1_sherouk_joinrequest</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_Amr_history_line_%23232/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_Amr_history_line_#232"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_Amr_history_line_#232">c2_Amr_history_line_#232</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_Amr_view_projects_%23252/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_Amr_view_projects_#252"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_Amr_view_projects_#252">c2_Amr_view_projects_#252</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_amr_choose_how_posts_are_ordered_%23125/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_amr_choose_how_posts_are_ordered_#125"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_amr_choose_how_posts_are_ordered_#125">c2_amr_choose_how_posts_are_ordered_#125</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_amr_ciew_projects_%23252/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_amr_ciew_projects_#252"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_amr_ciew_projects_#252">c2_amr_ciew_projects_#252</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_amr_create_and_show_project_documentation_%2369_%23126/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_amr_create_and_show_project_documentation_#69_#126"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_amr_create_and_show_project_documentation_#69_#126">c2_amr_create_and_show_project_documentation_#69_#126</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_amr_createProject/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_amr_createProject"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_amr_createProject">c2_amr_createProject</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_amr_createProject_documentation_edited_%2369/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_amr_createProject_documentation_edited_#69"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_amr_createProject_documentation_edited_#69">c2_amr_createProject_documentation_edited_#69</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_amr_createProject_validations_%2369/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_amr_createProject_validations_#69"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_amr_createProject_validations_#69">c2_amr_createProject_validations_#69</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c2_choose_how_posts_ordered_documentation_modified_125%23/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c2_choose_how_posts_ordered_documentation_modified_125#"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c2_choose_how_posts_ordered_documentation_modified_125#">c2_choose_how_posts_ordered_documentation_modified_125#</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c3_sandra_checkYears/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c3_sandra_checkYears"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c3_sandra_checkYears">c3_sandra_checkYears</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c3_sandra_youssef_photo_gallery_%23234/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c3_sandra_youssef_photo_gallery_#234"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c3_sandra_youssef_photo_gallery_#234">c3_sandra_youssef_photo_gallery_#234</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c3_sandra_youssef_the_user_should_be_able_to_browse_the_startup_by_choosing_the_number_of_working_years_%2367/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c3_sandra_youssef_the_user_should_be_able_to_browse_the_startup_by_choosing_the_number_of_working_years_#67"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c3_sandra_youssef_the_user_should_be_able_to_browse_the_startup_by_choosing_the_number_of_working_years_#67">c3_sandra_youssef_the_user_should_be_able_to_browse_the_startup_by_choosing_the_number_of_working_years_#67</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c4_sarah_investor/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c4_sarah_investor"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c4_sarah_investor">c4_sarah_investor</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/c4_sarah_portfolio/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="c4_sarah_portfolio"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="c4_sarah_portfolio">c4_sarah_portfolio</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/class_diagram/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="class_diagram"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="class_diagram">class_diagram</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/create_project_shell/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="create_project_shell"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="create_project_shell">create_project_shell</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/datbas/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="datbas"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="datbas">datbas</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/essam_25-0422_joinpublicgroup_t1/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="essam_25-0422_joinpublicgroup_t1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="essam_25-0422_joinpublicgroup_t1">essam_25-0422_joinpublicgroup_t1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/essamazzam/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="essamazzam"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="essamazzam">essamazzam</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/essamazzam_25-0422/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="essamazzam_25-0422"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="essamazzam_25-0422">essamazzam_25-0422</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/hana/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="hana"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="hana">hana</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/maha_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="maha_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="maha_profile">maha_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/master/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/mohamed_magdy_t17/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="mohamed_magdy_t17"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="mohamed_magdy_t17">mohamed_magdy_t17</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/nardeen_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="nardeen_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="nardeen_profile">nardeen_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_Hana_25-8680_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_Hana_25-8680_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_Hana_25-8680_add_info">t17_Hana_25-8680_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_SarahFathallah_25-0270_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_SarahFathallah_25-0270_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_SarahFathallah_25-0270_add_info">t17_SarahFathallah_25-0270_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_amr_5975/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_amr_5975"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_amr_5975">t17_amr_5975</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_hanamagdy_25-8680_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_hanamagdy_25-8680_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_hanamagdy_25-8680_add_info">t17_hanamagdy_25-8680_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_mohamed_25-4186_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_mohamed_25-4186_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_mohamed_25-4186_add_info">t17_mohamed_25-4186_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_mozdan/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_mozdan"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_mozdan">t17_mozdan</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_nardeen/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_nardeen"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_nardeen">t17_nardeen</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_nardeen_2485/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_nardeen_2485"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_nardeen_2485">t17_nardeen_2485</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_sandra_592/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_sandra_592"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_sandra_592">t17_sandra_592</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_sarahFathallah/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_sarahFathallah"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_sarahFathallah">t17_sarahFathallah</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_sarahFathallah_profile/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_sarahFathallah_profile"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_sarahFathallah_profile">t17_sarahFathallah_profile</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/t17_thareyeldeen_25-7751_add_info/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="t17_thareyeldeen_25-7751_add_info"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="t17_thareyeldeen_25-7751_add_info">t17_thareyeldeen_25-7751_add_info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Saftophobia/Sharesoft-14/blob/updated_class_diagram/StartupMaps/blog/app/models/entity_work_status.rb"
                 data-name="updated_class_diagram"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="updated_class_diagram">updated_class_diagram</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Saftophobia/Sharesoft-14/tree/c56240130d127459987d33fd09c5844f2485a589" data-branch="c56240130d127459987d33fd09c5844f2485a589" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">Sharesoft-14</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Saftophobia/Sharesoft-14/tree/c56240130d127459987d33fd09c5844f2485a589/StartupMaps" data-branch="c56240130d127459987d33fd09c5844f2485a589" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">StartupMaps</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Saftophobia/Sharesoft-14/tree/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog" data-branch="c56240130d127459987d33fd09c5844f2485a589" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">blog</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Saftophobia/Sharesoft-14/tree/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog/app" data-branch="c56240130d127459987d33fd09c5844f2485a589" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">app</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Saftophobia/Sharesoft-14/tree/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog/app/models" data-branch="c56240130d127459987d33fd09c5844f2485a589" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">models</span></a></span><span class="separator"> / </span><strong class="final-path">entity_work_status.rb</strong> <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="StartupMaps/blog/app/models/entity_work_status.rb" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/Saftophobia/Sharesoft-14/contributors/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog/app/models/entity_work_status.rb">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>4 lines (3 sloc)</span>
          <span class="meta-divider"></span>
        <span>0.068 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled tooltipped tooltipped-w" href="#"
                 aria-label="You must be signed in to make or propose changes">Edit</a>
          <a href="/Saftophobia/Sharesoft-14/raw/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog/app/models/entity_work_status.rb" class="button minibutton " id="raw-url">Raw</a>
            <a href="/Saftophobia/Sharesoft-14/blame/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog/app/models/entity_work_status.rb" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/Saftophobia/Sharesoft-14/commits/c56240130d127459987d33fd09c5844f2485a589/StartupMaps/blog/app/models/entity_work_status.rb" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->
    </div>
        <div class="blob-wrapper data type-ruby js-blob-data">
        <table class="file-code file-diff tab-size-8">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>

            </td>
            <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="k">class</span> <span class="nc">EntityWorkStatus</span> <span class="o">&lt;</span> <span class="no">ActiveRecord</span><span class="o">::</span><span class="no">Base</span></div><div class='line' id='LC2'>	<span class="n">belongs_to</span> <span class="ss">:entity</span></div><div class='line' id='LC3'><span class="k">end</span></div></pre></div></td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.04163s from github-fe136-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/frameworks-0761ba432b838d086e553e65a1be483eca0cba97.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/github-320bd0f5b22fb60db7de2f691e6a8956971f5da2.js" type="text/javascript"></script>
      
      
  </body>
</html>

