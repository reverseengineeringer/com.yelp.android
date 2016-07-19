.class public Lcom/yelp/android/appdata/q;
.super Lcom/yelp/android/appdata/f;
.source "YelpDeviceInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/appdata/f;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected j()F
    .locals 1

    .prologue
    .line 15
    const v0, 0x3fa66666    # 1.3f

    return v0
.end method

.method protected k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/appdata/f;->k()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(Ljava/lang/String;)V

    .line 22
    return-object v0
.end method
