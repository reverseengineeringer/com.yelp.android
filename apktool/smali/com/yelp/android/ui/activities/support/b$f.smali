.class Lcom/yelp/android/ui/activities/support/b$f;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/b;

.field private final b:Landroid/app/Activity;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/b;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b$f;->a:Lcom/yelp/android/ui/activities/support/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/b$f;->b:Landroid/app/Activity;

    .line 506
    iput p3, p0, Lcom/yelp/android/ui/activities/support/b$f;->c:I

    .line 507
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 511
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$f;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/support/b$d;

    const/4 v1, 0x1

    iget v2, p0, Lcom/yelp/android/ui/activities/support/b$f;->c:I

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/b$d;->onYesNoDialogSelection(ZI)V

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$f;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/support/b$d;

    const/4 v1, 0x0

    iget v2, p0, Lcom/yelp/android/ui/activities/support/b$f;->c:I

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/b$d;->onYesNoDialogSelection(ZI)V

    goto :goto_0
.end method
