.class Lcom/yelp/android/ui/activities/h;
.super Ljava/lang/Object;
.source "ActivityBizUrlCatcher.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/h;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    :try_start_0
    const-string/jumbo v0, "fb_ref"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    const-string/jumbo v2, "all__"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 132
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 133
    const-string/jumbo v3, "all__"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 136
    aget-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 139
    :cond_0
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-class v1, Lcom/yelp/android/ui/activities/h;

    const-string/jumbo v2, "Unsupported character set: UTF-8"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 65
    .line 73
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 75
    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    :goto_0
    invoke-static {p1}, Lcom/yelp/android/ui/activities/h;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    invoke-static {p0, v3}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string/jumbo v3, "yelp:return_to_biz_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_0
    const-string/jumbo v3, "hrid"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    invoke-static {p0, v3, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    const-string/jumbo v3, "yelp:return_to_biz_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_1
    const-string/jumbo v3, "tip_id"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 94
    invoke-static {p0, v3, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "yelp:return_to_biz_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_2
    if-eqz v0, :cond_4

    .line 99
    if-eqz p2, :cond_3

    .line 100
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    :cond_3
    const-string/jumbo v1, "yelp:external_request"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    :cond_4
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
