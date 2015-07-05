.class public abstract Lcom/yelp/android/appdata/webrequests/ep;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ResultProgressApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/j",
        "<TResult;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation
.end method
