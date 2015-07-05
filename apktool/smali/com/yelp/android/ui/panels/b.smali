.class Lcom/yelp/android/ui/panels/b;
.super Ljava/lang/Object;
.source "BizAttributePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributePanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yelp/android/ui/panels/b;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/panels/b;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V

    .line 37
    return-void
.end method
