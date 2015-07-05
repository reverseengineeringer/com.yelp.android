.class public final Lcom/yelp/android/appdata/webrequests/er;
.super Ljava/lang/Object;
.source "ReverseGeocodeRequest.java"


# instance fields
.field public final a:Lcom/yelp/android/serializable/Location;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Location;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/er;->a:Lcom/yelp/android/serializable/Location;

    .line 18
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/er;->b:Z

    .line 19
    return-void
.end method
