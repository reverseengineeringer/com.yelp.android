.class public Lcom/yelp/android/appdata/al;
.super Lcom/yelp/android/appdata/aj;
.source "RemoteConfigPreferences.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 173
    const-string/jumbo v0, "MessagesNotificationSetting"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/aj;-><init>(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 169
    const-string/jumbo v0, "MessagesNotificationSetting"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/aj;-><init>(Ljava/lang/String;Z)V

    .line 170
    return-void
.end method
