.class public Lcom/yelp/android/ui/activities/ActivityDebugActivities;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityDebugActivities.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "all"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/yelp/android/ui/activities/cd;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->b:[Ljava/lang/Class;

    .line 265
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/parcelgen/JsonParser",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-static {p0}, Lcom/yelp/android/debug/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 286
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 288
    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 290
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v4, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 291
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 295
    :cond_1
    invoke-virtual {p2, v1}, Lcom/yelp/parcelgen/JsonParser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    const-string/jumbo v3, "ActivityDebugActivities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error opening mock file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 299
    :catch_1
    move-exception v1

    .line 300
    const-string/jumbo v3, "ActivityDebugActivities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error parsing mock file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->b:[Ljava/lang/Class;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 259
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->b:[Ljava/lang/Class;

    aget-object v1, v1, p3

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->startActivity(Landroid/content/Intent;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->b:[Ljava/lang/Class;

    array-length v1, v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 82
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    const/16 v1, 0x3f4

    invoke-static {v1, v10}, Lcom/yelp/android/appdata/webrequests/ApiException;->getExceptionForCode(ILorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ApiException;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {p0}, Lcom/yelp/android/ui/activities/bugreport/ActivityReportABug;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "ActivityReportABug"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yelp/android/debug/FreezerDebugActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yelp/android/debug/FreezerFragmentDebugActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {p0, v11, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 100
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "ActivityFindFriends (from Sign Up)"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "ActivityMessaging"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "ActivityWeeklyIssue"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/yelp/android/debug/ActivityDebugButtonThemes;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "Button Theme Examples"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    const-string/jumbo v3, "Penny\'s Pizza Parlour"

    invoke-static {p0, v0, v3}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "First To Tip Award"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    const-string/jumbo v3, "Penny\'s Pizza"

    invoke-static {p0, v0, v3}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "First To Review Award"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yelp/android/serializable/GiftRecipient;

    const-string/jumbo v4, "to"

    const-string/jumbo v5, "from"

    const-string/jumbo v6, "message"

    const-string/jumbo v7, "email"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/yelp/android/serializable/GiftRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    const-string/jumbo v3, "dongs"

    invoke-static {p0, v3, v1}, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string/jumbo v0, "v1--deal+multiple_options.json"

    const-string/jumbo v1, "deal"

    sget-object v3, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1, v3}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;)Landroid/content/Intent;

    move-result-object v1

    .line 134
    const-string/jumbo v3, "intent_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DEAL+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    const-string/jumbo v0, "http://m.yelp.com/ui_tests?test_name=webview_events_test"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "test"

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static {p0, v0, v1, v3, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "intent_name"

    const-string/jumbo v3, "Webview Events Test Page"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string/jumbo v0, "v1--objects--deal+default.json"

    sget-object v1, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v10, v1}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 145
    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    if-eqz v0, :cond_2

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-static {p0, v10, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    const/16 v0, 0xf

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "v1--check_in+check_in-duke.json"

    aput-object v0, v3, v2

    const-string/jumbo v0, "v1--check_in+check_in_new_badge_mock.json"

    aput-object v0, v3, v11

    const/4 v0, 0x2

    const-string/jumbo v1, "v1--check_in+check_in_response_awarded_offer.json"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "v1--check_in+check_in-response-badge.json"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "v1--check_in+check_in-response-check_in_offer.json"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "v1--check_in+check_in-response-check_in_offer_redeem.json"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "v1--check_in+check_in-response-cio_not_earned.json"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "v1--check_in+check_in-response-first.json"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "v1--check_in+check_in-response.json"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "v1--check_in+check_in-response-newregular.json"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "v1--check_in+check_in-response-newtopuser.json"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string/jumbo v1, "v1--check_in+check_in-response-regular.json"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string/jumbo v1, "v1--check_in+check_in_response_started_offer.json"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string/jumbo v1, "v1--check_in+check_in-response-topuser.json"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string/jumbo v1, "v1--check_in+check_in_with_rewards.json"

    aput-object v1, v3, v0

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 172
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/sdcard/yelp-mocks/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/yelp/android/util/StringUtils;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance v6, Lcom/yelp/android/appdata/webrequests/ak;

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/yelp/android/appdata/webrequests/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V

    invoke-static {v5, v6}, Lcom/yelp/android/serializable/YelpCheckIn;->checkInFromJSONResponse(Lorg/json/JSONObject;Lcom/yelp/android/av/g;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v5

    .line 176
    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v6

    .line 177
    invoke-static {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v6

    .line 178
    sget-object v7, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v7, v6, v5}, Lcom/yelp/android/appdata/BusinessContributionType;->writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 179
    const-string/jumbo v5, "intent_name"

    const/16 v7, 0x2b

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string/jumbo v5, "CHECKIN"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 187
    :cond_3
    const-string/jumbo v0, "v1--objects--business+deal_multiple.json"

    sget-object v1, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v10, v1}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 189
    if-eqz v0, :cond_4

    .line 190
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "intent_name"

    const-string/jumbo v3, "Business-With-Offer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_4
    const-string/jumbo v0, "v1--objects--business+deal_purchased.json"

    sget-object v1, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v10, v1}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 197
    if-eqz v0, :cond_5

    .line 198
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    .line 199
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "Business-With-Purchase"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_5
    const-string/jumbo v1, "v1--objects--check_in+default.json"

    sget-object v3, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v10, v3}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 205
    if-eqz v1, :cond_6

    .line 206
    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v1

    .line 207
    const-string/jumbo v3, "intent_name"

    const-string/jumbo v4, "CommentOnCheckIn"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_6
    const-string/jumbo v1, "v1--objects--deal+default.json"

    sget-object v3, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v10, v3}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpDeal;

    .line 212
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 213
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    const-string/jumbo v3, "extra.deal_purchased"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    const-string/jumbo v1, "intent_name"

    const-string/jumbo v3, "Simulate Just Purchased a Deal"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_7
    const-string/jumbo v0, "v1--deal--purchase+default.json"

    const-string/jumbo v1, "business"

    sget-object v3, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1, v3}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 221
    if-eqz v0, :cond_8

    .line 222
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "intent_name"

    const-string/jumbo v3, "Business_WITH_DEAL"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    const-string/jumbo v1, "DERP_ID"

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 230
    const-string/jumbo v3, "Your Local Pub"

    invoke-static {p0, v0, v3}, Lcom/yelp/android/ui/activities/ActivityRoyal;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 231
    const-string/jumbo v4, "intent_name"

    const-string/jumbo v5, "Rank [%s]awarding"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 235
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 237
    :goto_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->b:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 239
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->b:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 242
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 243
    const-string/jumbo v3, "intent_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 244
    const-string/jumbo v3, "intent_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 246
    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 250
    :cond_c
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a:Landroid/widget/ArrayAdapter;

    .line 251
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 253
    const-string/jumbo v0, "Activities"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityDebugActivities;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method
