.class Lcom/yelp/android/ui/activities/bh;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bh;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bh;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(I)V

    .line 750
    return-void
.end method
