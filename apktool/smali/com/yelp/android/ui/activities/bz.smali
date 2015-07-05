.class Lcom/yelp/android/ui/activities/bz;
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
    .line 548
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bz;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bz;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showDialog(I)V

    .line 553
    return-void
.end method
