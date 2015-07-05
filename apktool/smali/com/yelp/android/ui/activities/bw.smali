.class Lcom/yelp/android/ui/activities/bw;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bw;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bw;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 505
    return-void
.end method
