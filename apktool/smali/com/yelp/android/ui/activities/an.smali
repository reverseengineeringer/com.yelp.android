.class Lcom/yelp/android/ui/activities/an;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/yelp/android/ui/activities/an;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/yelp/android/ui/activities/an;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->e(Lcom/yelp/android/ui/activities/ActivityConfig;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    return-void
.end method
