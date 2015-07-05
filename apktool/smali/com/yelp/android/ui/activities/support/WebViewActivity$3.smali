.class Lcom/yelp/android/ui/activities/support/WebViewActivity$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 556
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 557
    return-void
.end method
