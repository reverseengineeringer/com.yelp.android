.class public Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "PrivacyPolicySaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;)V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "/privacy_policy/save"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 25
    const-string/jumbo v0, "demographics"

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
