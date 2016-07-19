.class public Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivitySearchUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 267
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 270
    :goto_0
    return p1

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/yelp/android/serializable/Filter;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 170
    const-string/jumbo v0, "attribs_filter"

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 173
    array-length v0, v2

    if-lez v0, :cond_0

    .line 174
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 175
    new-instance v5, Lcom/yelp/android/serializable/GenericSearchFilter;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6, v1}, Lcom/yelp/android/serializable/GenericSearchFilter;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p2, v5}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method private b(Landroid/net/Uri;Lcom/yelp/android/serializable/Filter;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 183
    const-string/jumbo v0, "ytp_st"

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "ytp_loc"

    invoke-static {v1, p1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string/jumbo v2, "pickup"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    new-instance v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    new-instance v1, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v2, "pickup"

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/PlatformFilter;Z)V

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const-string/jumbo v2, "delivery_default"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    new-instance v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    new-instance v1, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v2, "delivery_current_location"

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/PlatformFilter;Z)V

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto :goto_0

    .line 195
    :cond_2
    const-string/jumbo v2, "delivery"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    new-instance v2, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v3, "delivery"

    invoke-direct {v2, v3, v1}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/PlatformFilter;Z)V

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto :goto_0
.end method

.method private c(Landroid/net/Uri;Lcom/yelp/android/serializable/Filter;)V
    .locals 7

    .prologue
    .line 205
    const-string/jumbo v0, "rez_covers"

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "rez_date"

    invoke-static {v1, p1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string/jumbo v2, "rez_time"

    invoke-static {v2, p1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x14

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 219
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "HHmm"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 236
    const/16 v4, 0xb

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 237
    const/16 v4, 0xc

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 256
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    invoke-static {}, Lcom/yelp/android/ui/activities/reservations/c;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 260
    :cond_2
    new-instance v1, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    new-instance v2, Lcom/yelp/android/serializable/ReservationFilter;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/serializable/ReservationFilter;-><init>(ILjava/util/Date;)V

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/ReservationFilter;Z)V

    invoke-virtual {p2, v1}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    const-string/jumbo v1, "SearchUrlInterceptor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not parse search url param rez_date with value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :catch_1
    move-exception v1

    .line 239
    const-string/jumbo v1, "SearchUrlInterceptor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not parse search url param rez_time with value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :cond_3
    const/16 v1, 0xf

    const/16 v2, 0x13

    const/16 v4, 0x17

    invoke-static {v3, v1, v2, v4}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;III)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    goto :goto_2
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http"

    const-string/jumbo v3, "/search"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "yelp"

    const-string/jumbo v3, "/search"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "yelp4"

    const-string/jumbo v3, "/search"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "yelp4.5"

    const-string/jumbo v3, "/search"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "search"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ae;->a([Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 111
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/n;

    invoke-direct {v1, v2}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 113
    new-instance v3, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v3}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hot_new_businesses"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 119
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f07032b

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 158
    :goto_0
    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "yelp:external_request"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->finish()V

    .line 162
    :goto_1
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->finish()V

    goto :goto_1

    .line 121
    :cond_0
    const-string/jumbo v0, "find_desc"

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v3, v1}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 123
    const-string/jumbo v0, "find_loc"

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 124
    const-string/jumbo v0, "cflt"

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 125
    const/4 v0, 0x0

    .line 126
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 127
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/e;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v4}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 129
    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 134
    :cond_1
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "check_in_offers"

    invoke-static {v5, v2}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    if-eqz v1, :cond_3

    .line 136
    :goto_2
    if-eqz v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_3
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0701b1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 151
    :cond_2
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    const-string/jumbo v1, "sortby"

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/Sort;->fromQueryParameter(Ljava/lang/String;)Lcom/yelp/android/serializable/Sort;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Sort;)V

    .line 152
    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->a(Landroid/net/Uri;Lcom/yelp/android/serializable/Filter;)V

    .line 153
    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->b(Landroid/net/Uri;Lcom/yelp/android/serializable/Filter;)V

    .line 154
    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivitySearchUrlCatcher;->c(Landroid/net/Uri;Lcom/yelp/android/serializable/Filter;)V

    .line 155
    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    goto/16 :goto_0

    .line 135
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 136
    goto :goto_3

    .line 143
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
