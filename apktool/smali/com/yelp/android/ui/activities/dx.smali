.class Lcom/yelp/android/ui/activities/dx;
.super Ljava/lang/Object;
.source "ActivitySignUpComplete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivitySignUpComplete;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivitySignUpComplete;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dx;->a:Lcom/yelp/android/ui/activities/ActivitySignUpComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dx;->a:Lcom/yelp/android/ui/activities/ActivitySignUpComplete;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->finish()V

    .line 60
    return-void
.end method
