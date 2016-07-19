.class public Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;
.super Ljava/lang/Object;
.source "UserPhotoUploadController.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$1;,
        Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;,
        Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/fk$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/fk;

.field private b:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;

.field private c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->DO_NOTHING:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 103
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    iput-object p1, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;

    .line 43
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$1;->a:[I

    iget-object v1, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-virtual {p0, v2, v2}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 50
    :pswitch_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fk$a;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/fk$a;-><init>(Lcom/yelp/android/serializable/Photo;Z)V

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a:Lcom/yelp/android/appdata/webrequests/fk;

    .line 111
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;->a(Z)V

    .line 113
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->DO_NOTHING:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_SUCCESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_IN_PROGRESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 88
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fk;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/yelp/android/appdata/webrequests/fk;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a:Lcom/yelp/android/appdata/webrequests/fk;

    .line 89
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a:Lcom/yelp/android/appdata/webrequests/fk;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fk;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 90
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    sget-object v1, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_IN_PROGRESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->DO_NOTHING:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a:Lcom/yelp/android/appdata/webrequests/fk;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a:Lcom/yelp/android/appdata/webrequests/fk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fk;->a(Z)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a:Lcom/yelp/android/appdata/webrequests/fk;

    .line 101
    :cond_0
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a:Lcom/yelp/android/appdata/webrequests/fk;

    .line 71
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;->a(Z)V

    .line 73
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->DO_NOTHING:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_ERROR:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    iput-object v0, p0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->c:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fk$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V

    return-void
.end method
