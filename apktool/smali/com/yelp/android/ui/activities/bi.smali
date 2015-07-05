.class Lcom/yelp/android/ui/activities/bi;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bi;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bi;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 759
    return-void
.end method
