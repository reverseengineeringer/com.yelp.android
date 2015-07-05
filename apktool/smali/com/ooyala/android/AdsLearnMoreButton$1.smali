.class Lcom/ooyala/android/AdsLearnMoreButton$1;
.super Ljava/lang/Object;
.source "AdsLearnMoreButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/AdsLearnMoreButton;


# direct methods
.method constructor <init>(Lcom/ooyala/android/AdsLearnMoreButton;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ooyala/android/AdsLearnMoreButton$1;->this$0:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton$1;->this$0:Lcom/ooyala/android/AdsLearnMoreButton;

    # getter for: Lcom/ooyala/android/AdsLearnMoreButton;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;
    invoke-static {v0}, Lcom/ooyala/android/AdsLearnMoreButton;->access$000(Lcom/ooyala/android/AdsLearnMoreButton;)Lcom/ooyala/android/AdMoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/AdMoviePlayer;->processClickThrough()V

    .line 40
    return-void
.end method
