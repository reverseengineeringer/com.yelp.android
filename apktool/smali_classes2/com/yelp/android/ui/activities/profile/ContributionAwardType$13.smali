.class final enum Lcom/yelp/android/ui/activities/profile/ContributionAwardType$13;
.super Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.source "ContributionAwardType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ContributionAwardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;II)V
    .locals 7

    .prologue
    .line 187
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType;-><init>(Ljava/lang/String;ILcom/yelp/android/analytics/iris/EventIri;IILcom/yelp/android/ui/activities/profile/ContributionAwardType$1;)V

    return-void
.end method


# virtual methods
.method public getTitleRes(Lcom/yelp/android/serializable/User;)I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const v0, 0x7f070185

    .line 209
    :goto_0
    return v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->M()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const v0, 0x7f070647

    goto :goto_0

    .line 209
    :cond_1
    const v0, 0x7f07048e

    goto :goto_0
.end method

.method getValue(Lcom/yelp/android/serializable/User;)I
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->M()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getViewIntent(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-direct {v0, p2}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Lcom/yelp/android/serializable/User;)V

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/profile/ContributionAwardType$13;->getTitleRes(Lcom/yelp/android/serializable/User;)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
