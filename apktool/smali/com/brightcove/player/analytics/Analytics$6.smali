.class Lcom/brightcove/player/analytics/Analytics$6;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/brightcove/player/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 260
    const-string/jumbo v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 262
    if-ltz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v1, v0}, Lcom/brightcove/player/analytics/Analytics;->access$202(Lcom/brightcove/player/analytics/Analytics;I)I

    .line 264
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v2

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/brightcove/player/analytics/Analytics;->access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V

    .line 265
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    # setter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v0, v1}, Lcom/brightcove/player/analytics/Analytics;->access$302(Lcom/brightcove/player/analytics/Analytics;I)I

    .line 266
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$6;->this$0:Lcom/brightcove/player/analytics/Analytics;

    const-string/jumbo v1, "video_complete"

    const/4 v2, 0x0

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, p1, v1, v2}, Lcom/brightcove/player/analytics/Analytics;->access$500(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    .line 268
    :cond_0
    return-void
.end method
