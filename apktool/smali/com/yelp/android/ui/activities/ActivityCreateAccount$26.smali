.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$26;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$26;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$26;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/widgets/SelectionSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->performClick()Z

    .line 597
    return-void
.end method
