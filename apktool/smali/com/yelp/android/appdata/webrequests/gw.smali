.class public Lcom/yelp/android/appdata/webrequests/gw;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"


# instance fields
.field final a:Lcom/yelp/android/serializable/Photo;

.field final b:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Photo;Z)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/gw;->a:Lcom/yelp/android/serializable/Photo;

    .line 69
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/gw;->b:Z

    .line 70
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gw;->a:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/gw;->b:Z

    return v0
.end method
