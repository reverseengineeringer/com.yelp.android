.class Lcom/yelp/android/ui/panels/ad;
.super Ljava/lang/Object;
.source "PanelMapCallout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ac;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ac;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ad;->a:Lcom/yelp/android/ui/panels/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ad;->a:Lcom/yelp/android/ui/panels/ac;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ac;->a(Lcom/yelp/android/ui/panels/ac;)Lcom/yelp/android/ui/panels/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/ae;->a()V

    .line 61
    return-void
.end method
