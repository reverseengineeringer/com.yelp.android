.class Lcom/yelp/android/ui/dialogs/m;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Offer;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/l;Lcom/yelp/android/serializable/Offer;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/m;->b:Lcom/yelp/android/ui/dialogs/l;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/m;->a:Lcom/yelp/android/serializable/Offer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/m;->b:Lcom/yelp/android/ui/dialogs/l;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/m;->a:Lcom/yelp/android/serializable/Offer;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/serializable/Offer;)Lcom/yelp/android/serializable/Offer;

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/m;->b:Lcom/yelp/android/ui/dialogs/l;

    iget-object v1, v0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/m;->b:Lcom/yelp/android/ui/dialogs/l;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isRedeemed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Z)V

    .line 417
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
