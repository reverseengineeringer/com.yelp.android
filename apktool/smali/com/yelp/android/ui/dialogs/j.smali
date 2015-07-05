.class Lcom/yelp/android/ui/dialogs/j;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/i;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/j;->a:Lcom/yelp/android/ui/dialogs/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/j;->a:Lcom/yelp/android/ui/dialogs/i;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/i;->a:Lcom/yelp/android/ui/dialogs/h;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/h;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->dismiss()V

    .line 367
    return-void
.end method
