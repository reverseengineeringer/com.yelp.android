.class public final Lcom/yelp/android/appdata/webrequests/dr$a;
.super Ljava/lang/Object;
.source "ReverseGeocodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/yelp/android/serializable/Location;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Location;Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dr$a;->a:Lcom/yelp/android/serializable/Location;

    .line 24
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/dr$a;->b:Z

    .line 25
    return-void
.end method
