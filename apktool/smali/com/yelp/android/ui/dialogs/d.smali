.class Lcom/yelp/android/ui/dialogs/d;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/d;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    .line 316
    return-void
.end method