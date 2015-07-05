.class Lcom/yelp/android/ui/activities/support/p;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/h;

.field private final b:Landroid/app/Activity;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/h;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/p;->a:Lcom/yelp/android/ui/activities/support/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/p;->b:Landroid/app/Activity;

    .line 531
    iput p3, p0, Lcom/yelp/android/ui/activities/support/p;->c:I

    .line 532
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 536
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/p;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/support/n;

    const/4 v1, 0x1

    iget v2, p0, Lcom/yelp/android/ui/activities/support/p;->c:I

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/n;->onYesNoDialogSelection(ZI)V

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/p;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/support/n;

    const/4 v1, 0x0

    iget v2, p0, Lcom/yelp/android/ui/activities/support/p;->c:I

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/n;->onYesNoDialogSelection(ZI)V

    goto :goto_0
.end method
