.class Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9$1;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Offer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Offer;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;Lcom/yelp/android/serializable/Offer;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9$1;->b:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9$1;->a:Lcom/yelp/android/serializable/Offer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9$1;->b:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9$1;->a:Lcom/yelp/android/serializable/Offer;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/serializable/Offer;)Lcom/yelp/android/serializable/Offer;

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9$1;->b:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;

    iget-object v1, v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9$1;->b:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Z)V

    .line 469
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
