.class public Lcom/yelp/android/appdata/LocationService$NoProvidersException;
.super Ljava/lang/Exception;
.source "LocationService.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string/jumbo v0, "No location providers enabled!"

    return-object v0
.end method
