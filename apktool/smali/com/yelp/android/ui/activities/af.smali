.class Lcom/yelp/android/ui/activities/af;
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
    .line 403
    iput-object p1, p0, Lcom/yelp/android/ui/activities/af;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/af;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    const v1, 0x845fed

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfig;->showDialog(I)V

    .line 408
    return-void
.end method
