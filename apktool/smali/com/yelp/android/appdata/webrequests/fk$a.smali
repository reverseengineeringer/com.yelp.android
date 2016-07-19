.class public Lcom/yelp/android/appdata/webrequests/fk$a;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/yelp/android/serializable/Photo;

.field final b:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Photo;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/fk$a;->a:Lcom/yelp/android/serializable/Photo;

    .line 77
    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/fk$a;->b:Z

    .line 78
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fk$a;->a:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/fk$a;->b:Z

    return v0
.end method
