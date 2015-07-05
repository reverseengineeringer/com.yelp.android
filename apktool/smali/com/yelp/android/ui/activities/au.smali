.class Lcom/yelp/android/ui/activities/au;
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
    .line 525
    iput-object p1, p0, Lcom/yelp/android/ui/activities/au;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/au;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfig;->showDialog(I)V

    .line 530
    return-void
.end method
