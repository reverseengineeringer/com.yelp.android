.class public Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;
.super Lcom/yelp/android/av/h;
.source "PrivacyPolicySaveRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/av/i;Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;)V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "/privacy_policy/save"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 25
    const-string/jumbo v0, "demographics"

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
