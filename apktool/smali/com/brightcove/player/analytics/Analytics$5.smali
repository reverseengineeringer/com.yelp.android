.class Lcom/brightcove/player/analytics/Analytics$5;
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
    .line 228
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 232
    const-string/jumbo v1, "playheadPosition"

    invoke-virtual {p1, v1}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v1

    .line 234
    if-ltz v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1388

    if-le v2, v3, :cond_1

    .line 236
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v2}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v2

    iget-object v3, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v3}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v3

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    invoke-static {v0, p1, v2, v3}, Lcom/brightcove/player/analytics/Analytics;->access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V

    .line 237
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2, v1}, Lcom/brightcove/player/analytics/Analytics;->access$202(Lcom/brightcove/player/analytics/Analytics;I)I

    move-result v1

    # setter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v0, v1}, Lcom/brightcove/player/analytics/Analytics;->access$302(Lcom/brightcove/player/analytics/Analytics;I)I

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2, v1}, Lcom/brightcove/player/analytics/Analytics;->access$202(Lcom/brightcove/player/analytics/Analytics;I)I

    .line 243
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$600(Lcom/brightcove/player/analytics/Analytics;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v0}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    const-string/jumbo v1, "video_view"

    const/4 v2, 0x0

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, p1, v1, v2}, Lcom/brightcove/player/analytics/Analytics;->access$500(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    const/4 v1, 0x1

    # setter for: Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/analytics/Analytics;->access$602(Lcom/brightcove/player/analytics/Analytics;Z)Z

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v0}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 249
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v2

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/brightcove/player/analytics/Analytics;->access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V

    .line 251
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$5;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    # setter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v0, v1}, Lcom/brightcove/player/analytics/Analytics;->access$302(Lcom/brightcove/player/analytics/Analytics;I)I

    goto :goto_0
.end method
